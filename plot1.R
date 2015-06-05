plotHist <- function(df) {
  if (is.null(df)) {
    message("please provide a valid data frame as input to the function")
    return(-1)
  }
  
  library(datasets)
  hist(df$Global_active_power,col="RED", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.copy(png,file="./data/plot1.png")
  dev.off() 
}