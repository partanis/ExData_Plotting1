plotEnergysubMetLines <- function(df) {
  if (is.null(df)) {
    message("please provide a valid data frame as input to the function")
    return(-1)
  }
  
  library(datasets)
  ## hist(df$Global_active_power,col="RED", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  ##plot(c1Data1$DateTime, c1Data1$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  png("./data/plot3.png",width=480,height=480)
  plot(c1Data1$DateTime, c1Data1$Sub_metering_1, type="l", ylab="Energy Sub Metering", xlab="")
  lines(c1Data1$DateTime, c1Data1$Sub_metering_2, col="BLUE", type="l")
  lines(c1Data1$DateTime, c1Data1$Sub_metering_3, col="RED", type="l")
  legend("topright",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1)
  ##dev.copy(png,file="./data/plot3.png")
  dev.off() 
}