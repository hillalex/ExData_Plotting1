#!/usr/bin/env Rscript
source("R/shared.R")

write_png("plot1.png", {
  hist(data$Global_active_power,
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)",
       col = "red")
})
