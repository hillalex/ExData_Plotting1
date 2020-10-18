if (!file.exists("data/household_power_consumption.txt")) {
  stop("\n The source data is not in place.\n Please refer to the README for instructions.\n ")
}

library(dplyr)
library(readr)
library(lubridate)
data <- read_delim("data/household_power_consumption.txt",
                   delim = ";",
                   na = c("", "NA", "?")) %>%
  filter(Date == "1/2/2007" | Date == "2/2/2007") %>%
  mutate(Datetime = dmy_hms(paste(Date, Time)))

write_png <- function (filename, work) {
  png(filename)
  eval(work)
  dev.off()
}
