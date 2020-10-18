#!/usr/bin/env Rscript
source("R/shared.R")

write_png("plot3.png", {
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
         lty=1)
})
