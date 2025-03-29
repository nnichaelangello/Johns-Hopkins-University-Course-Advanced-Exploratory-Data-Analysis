# Johns Hopkins University Course: Advanced Exploratory Data Analysis

## Project Description
This project is part of the **Advanced Exploratory Data Analysis** course from Johns Hopkins University. It focuses on analyzing fine particulate matter (PM2.5) emissions across the United States from 1999 to 2008, utilizing the National Emissions Inventory (NEI) dataset provided by the Environmental Protection Agency (EPA). The analysis is performed using the R programming language and answers six specific questions through data visualization.

The objectives include:
- Assessing total PM2.5 emissions trends across the U.S.
- Investigating emissions in Baltimore City, Maryland.
- Examining emissions by source type in Baltimore.
- Analyzing coal combustion-related emissions nationwide.
- Evaluating motor vehicle emissions in Baltimore.
- Comparing motor vehicle emissions between Baltimore City and Los Angeles County.

## Prerequisites
To run the code in this project, you will need:
- **R** (version 4.0.0 or later recommended).
- R Package: `ggplot2` (required for Plots 3 and 6).
  - Install with: `install.packages("ggplot2")`.
- Data Files:
  - `summarySCC_PM25.rds`
  - `Source_Classification_Code.rds`
  - Download from the course website or ensure they are in your working directory.

## How to Run
1. **Prepare the Data:**
   - Ensure `summarySCC_PM25.rds` and `Source_Classification_Code.rds` are placed in the `data/` folder or your working directory.
2. **Execute the Scripts:**
   - Open an R script (e.g., `plot1.R`) in RStudio or another R editor.
   - Run the entire script to generate the corresponding PNG plot.
   - The PNG file will be saved in the `plots/` folder or your working directory.
3. **Example Command:**
   ```bash
   Rscript plot1.R
   ```
   Repeat for each script (`plot2.R`, `plot3.R`, etc.).

## Plot Descriptions
1. **Plot 1:** Total PM2.5 emissions in the U.S. (1999-2008) using base plotting.

   ![plot1](https://github.com/user-attachments/assets/324e2c4b-fc54-4196-8392-4b625e84b9b1)

2. **Plot 2:** Total PM2.5 emissions in Baltimore City (1999-2008) using base plotting.

  ![plot2](https://github.com/user-attachments/assets/b689e7b9-c1e6-42e0-a89d-361a2d5c13a9)

3. **Plot 3:** PM2.5 emissions by source type in Baltimore (1999-2008) using ggplot2.

  ![plot3](https://github.com/user-attachments/assets/8891cbd5-5e07-45f8-8fb7-23c64f23b899)

4. **Plot 4:** Coal combustion-related PM2.5 emissions in the U.S. (1999-2008) using base plotting.

  ![plot4](https://github.com/user-attachments/assets/dbad2218-e3ce-4afe-ad85-ccff71611b9f)

5. **Plot 5:** Motor vehicle PM2.5 emissions in Baltimore (1999-2008) using base plotting.

  ![plot5](https://github.com/user-attachments/assets/2dd69b78-de60-4603-854b-02cc8618e964)

6. **Plot 6:** Comparison of motor vehicle PM2.5 emissions in Baltimore vs. Los Angeles (1999-2008) using ggplot2.

  ![plot6](https://github.com/user-attachments/assets/b2449d93-90f3-4ce9-9afb-97fb6b7b6ccb)

## Sample Code
Below is the code for Plot 1:
```R
# plot1.R
NEI <- readRDS("summarySCC_PM25.rds")
total_emissions <- aggregate(Emissions ~ year, NEI, sum)
png("plot1.png", width=480, height=480)
plot(total_emissions$year, total_emissions$Emissions, type="b", pch=19, col="blue",
     xlab="Year", ylab="Total PM2.5 Emissions (tons)",
     main="Total PM2.5 Emissions in the United States (1999-2008)")
dev.off()
```

## Contributing
To contribute to this project:
1. Fork this repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Add feature X"`).
4. Push to your branch (`git push origin feature-branch`).
5. Open a Pull Request.

## License
This project is licensed under the [MIT License](LICENSE).

## Contact
For questions or suggestions, feel free to reach out via [GitHub Issues](https://github.com/nnichaelangello/Johns-Hopkins-University-Course-Advanced-Exploratory-Data-Analysis/issues) or contact me at [nnichaelangello@example.com](mailto:nnichaelangello@example.com).

---
Created by [nnichaelangello](https://github.com/nnichaelangello) as part of the Johns Hopkins University Course on Advanced Exploratory Data Analysis.
```
