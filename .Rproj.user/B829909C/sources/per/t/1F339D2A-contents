# plot4.R
# Membaca data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Memfilter SCC untuk sumber terkait pembakaran batubara
coal_scc <- SCC[grep("Coal", SCC$Short.Name, ignore.case=TRUE), "SCC"]
coal_data <- subset(NEI, SCC %in% coal_scc)

# Menghitung total emisi per tahun
coal_emissions <- aggregate(Emissions ~ year, coal_data, sum)

# Membuat plot menggunakan base plotting system
png("plot4.png", width=480, height=480)
plot(coal_emissions$year, coal_emissions$Emissions, type="b", pch=19, col="green",
     xlab="Year", ylab="Total PM2.5 Emissions (tons)",
     main="PM2.5 Emissions from Coal Combustion Sources in the US (1999-2008)")
dev.off()
