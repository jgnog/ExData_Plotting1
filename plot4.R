source("load_data.R")

png("plot4.png")
par(mfrow = c(2, 2), cex = 0.6)

plot(household_power_consumption$DateTime,
     household_power_consumption$Global_active_power,
     type = "n",
     xlab = "",
     ylab = "Global Active Power")

lines(household_power_consumption$DateTime,
      household_power_consumption$Global_active_power)

plot(household_power_consumption$DateTime,
     household_power_consumption$Voltage,
     type = "n",
     xlab = "datetime",
     ylab = "Voltage")

lines(household_power_consumption$DateTime,
      household_power_consumption$Voltage)

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

plot(household_power_consumption$DateTime,
     household_power_consumption$Global_reactive_power,
     type = "n",
     xlab = "datetime",
     ylab = "Global_reactive_power")

lines(household_power_consumption$DateTime,
      household_power_consumption$Global_reactive_power)

dev.off()