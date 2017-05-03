source("load_data.R")

png("plot2.png")

plot(household_power_consumption$DateTime,
     household_power_consumption$Global_active_power,
     type = "n",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

lines(household_power_consumption$DateTime,
      household_power_consumption$Global_active_power)

dev.off()