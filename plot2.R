plotActPowLine <- function(df) {
  if (is.null(df)) {
    message("please provide a valid data frame as input to the function")
    return(-1)
  }
  
  library(datasets)
  ## hist(df$Global_active_power,col="RED", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  plot(c1Data1$DateTime, c1Data1$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.copy(png,file="./data/plot2.png")
  dev.off() 
}