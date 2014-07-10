source("load_dataset.R")

plot2 <- function(data) {

  png("plot2.png")
  
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}