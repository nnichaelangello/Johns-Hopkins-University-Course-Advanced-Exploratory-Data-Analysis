# plot6.R
# Membaca data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
library(ggplot2)

# Memfilter SCC untuk sumber kendaraan bermotor
vehicle_scc <- SCC[grep("Vehicle", SCC$EI.Sector, ignore.case=TRUE), "SCC"]
baltimore_la <- subset(NEI, (fips == "24510" | fips == "06037") & SCC %in% vehicle_scc)

# Menambahkan label kota
baltimore_la$city <- ifelse(baltimore_la$fips == "24510", "Baltimore City", "Los Angeles County")

# Menghitung total emisi per tahun dan kota
vehicle_by_city <- aggregate(Emissions ~ year + city, baltimore_la, sum)

# Membuat plot menggunakan ggplot2
png("plot6.png", width=600, height=480)
ggplot(vehicle_by_city, aes(x=year, y=Emissions, color=city)) +
  geom_line() + geom_point() +
  labs(title="Motor Vehicle PM2.5 Emissions: Baltimore vs Los Angeles (1999-2008)",
       x="Year", y="Total PM2.5 Emissions (tons)") +
  theme_minimal()
dev.off()
