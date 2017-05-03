# This file only loads the data
# Other files will source this file to load the data.
# This avoids duplication of code in the four files needed to produce the
# plots.

column_classes = c("character",
                   "character",
                   "numeric",
                   "numeric",
                   "numeric",
                   "numeric",
                   "numeric",
                   "numeric",
                   "numeric")

household_power_consumption <- read.table("household_power_consumption.txt",
                                          header = TRUE,
                                          sep = ";",
                                          na.strings = "?",
                                          colClasses = column_classes,
                                          stringsAsFactors = FALSE)

household_power_consumption$DateTime <- paste(household_power_consumption$Date,
                                              household_power_consumption$Time,
                                              sep = " ")
household_power_consumption$DateTime <- strptime(household_power_consumption$DateTime,
                                                 format = "%d/%m/%Y %H:%M:%S")

household_power_consumption <- household_power_consumption[, 3:10]

household_power_consumption <- household_power_consumption[
                                household_power_consumption$DateTime >= "2007-02-01" &
                                household_power_consumption$DateTime < "2007-02-03", ]
