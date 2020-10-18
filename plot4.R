#!/usr/bin/env Rscript
source("R/shared.R")

write_png("plot4.png", {
  par(mfrow = c(2, 2))
  plot(data$Datetime, data$Global_active_power,
       ylab = "Global Active Power",
       xlab = "",
       type = "l")
  plot(data$Datetime, data$Voltage,
       ylab = "Voltage",
       xlab = "datetime",
       type = "l")
  plot(data$Datetime, data$Sub_metering_1,
       ylab = "Energy sub metering",
       xlab = "",
       type = "l")
  points(data$Datetime, data$Sub_metering_2,
         col = "red",
         type = "l")
  points(data$Datetime, data$Sub_metering_3,
         col = "blue",
         type = "l")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col = c("black", "red", "blue"),
         lty = 1)
  plot(data$Datetime, data$Global_reactive_power,
       ylab = "Global_reactive_power",
       xlab = "datetime",
       type = "l")
})
