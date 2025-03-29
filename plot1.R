# plot1.R
# Membaca data
NEI <- readRDS("summarySCC_PM25.rds")

# Menghitung total emisi per tahun
total_emissions <- aggregate(Emissions ~ year, NEI, sum)

# Membuat plot menggunakan base plotting system
png("plot1.png", width=480, height=480)
plot(total_emissions$year, total_emissions$Emissions, type="b", pch=19, col="blue",
     xlab="Year", ylab="Total PM2.5 Emissions (tons)",
     main="Total PM2.5 Emissions in the United States (1999-2008)")
dev.off()
