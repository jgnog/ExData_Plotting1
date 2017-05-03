# Load the data by sourcing the file with the code for loading the data.
source("load_data.R")

png("plot1.png")

hist(household_power_consumption$Global_active_power,
     main = "Global Active Power",
     col = "red",
     xlab = "Global Active Power (kilowatts)")

dev.off()
