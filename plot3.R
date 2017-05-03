source("load_data.R")

png("plot3.png")

plot(household_power_consumption$DateTime,
     household_power_consumption$Sub_metering_1,
     type = "n",
     xlab = "",
     ylab = "Energy sub metering")

lines(household_power_consumption$DateTime,
      household_power_consumption$Sub_metering_1)

lines(household_power_consumption$DateTime,
      household_power_consumption$Sub_metering_2,
      col = "red")

lines(household_power_consumption$DateTime,
      household_power_consumption$Sub_metering_3,
      col = "blue")

legend("topright",
       names(household_power_consumption)[5:7],
       lty = c(1,1,1),
       col = c("black", "red", "blue"))

dev.off()