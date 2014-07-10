# Loads assignment dataset into R

load_data <- function() {
  filename <- "household_power_consumption.txt"
  #First read of the whole file
  df <- read.table(filename,
                   header=TRUE,
                   sep=";",
                   colClasses=c("character", "character", rep("numeric",7)),
                   na="?")
  # convert timestamp to date format
  df$Time <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
  # convert date to date format 
  df$Date <- as.Date(df$Date, "%d/%m/%Y")
  # Filter data to lines with date 2007-02-01 and 2007-02-02
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df <- subset(df, Date %in% dates)
  
  return(df)
  
}