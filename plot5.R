# plot5.R
# Membaca data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Memfilter SCC untuk sumber kendaraan bermotor
vehicle_scc <- SCC[grep("Vehicle", SCC$EI.Sector, ignore.case=TRUE), "SCC"]
baltimore_vehicle <- subset(NEI, fips == "24510" & SCC %in% vehicle_scc)

# Menghitung total emisi per tahun
vehicle_emissions <- aggregate(Emissions ~ year, baltimore_vehicle, sum)

# Membuat plot menggunakan base plotting system
png("plot5.png", width=480, height=480)
plot(vehicle_emissions$year, vehicle_emissions$Emissions, type="b", pch=19, col="purple",
     xlab="Year", ylab="Total PM2.5 Emissions (tons)",
     main="PM2.5 Emissions from Motor Vehicles in Baltimore City (1999-2008)")
dev.off()
