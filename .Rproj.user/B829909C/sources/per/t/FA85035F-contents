# plot2.R
# Membaca data
NEI <- readRDS("summarySCC_PM25.rds")

# Memfilter data untuk Baltimore City (fips == "24510")
baltimore <- subset(NEI, fips == "24510")

# Menghitung total emisi per tahun untuk Baltimore
baltimore_emissions <- aggregate(Emissions ~ year, baltimore, sum)

# Membuat plot menggunakan base plotting system
png("plot2.png", width=480, height=480)
plot(baltimore_emissions$year, baltimore_emissions$Emissions, type="b", pch=19, col="red",
     xlab="Year", ylab="Total PM2.5 Emissions (tons)",
     main="Total PM2.5 Emissions in Baltimore City (1999-2008)")
dev.off()
