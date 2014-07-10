source("load_dataset.R")

plot1 <- function(data) {
    
  png("plot1.png")
  
  hist(data$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  dev.off()
}
