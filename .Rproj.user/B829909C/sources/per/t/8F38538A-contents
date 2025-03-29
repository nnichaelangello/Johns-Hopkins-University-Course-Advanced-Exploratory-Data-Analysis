# plot3.R
# Membaca data
NEI <- readRDS("summarySCC_PM25.rds")
library(ggplot2)

# Memfilter data untuk Baltimore City (fips == "24510")
baltimore <- subset(NEI, fips == "24510")

# Menghitung total emisi per tahun dan tipe sumber
baltimore_by_type <- aggregate(Emissions ~ year + type, baltimore, sum)

# Membuat plot menggunakan ggplot2
png("plot3.png", width=600, height=480)
ggplot(baltimore_by_type, aes(x=year, y=Emissions, color=type)) +
  geom_line() + geom_point() +
  labs(title="PM2.5 Emissions by Source Type in Baltimore City (1999-2008)",
       x="Year", y="Total PM2.5 Emissions (tons)") +
  theme_minimal()
dev.off()
