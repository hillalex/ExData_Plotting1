#!/usr/bin/env Rscript
source("R/shared.R")

write_png("plot2.png", {
  with(data, plot(Datetime, Global_active_power,
                  ylab = "Global Active Power (kilowatts)",
                  xlab = "",
                  type = "l"))
})
