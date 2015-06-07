## There is a prerequisite to run this program, If you want to run the code, please follow quick clean up before executing the program
## 1. It expects as a DataFrame with the following columns.
## 2. Global_active_power, Voltage, Sub_metering_1, Sub_metering_2, Sub_metering_3, Global_reactive_power and DateTime
## 3. DateTime is a special column that was added after
##    - Convert date into Date class applying the format with this command 
##        > c1Data1[,1] <- as.Date(c1Data1[,1],"%d/%m/%Y")
##    - concatenate the original Date and Time
##        > c1Data1$DateTime <- paste(as.Date(c1Data1[,1],"%d/%m/%Y"),c1Data1[,2])
##    - Convert the the DateTime into POSIXct, POSIxt class
##        > c1Data1[,10] <- as.POSIXct(strptime(c1Data1[,10], "%Y-%m-%d %H:%M:%S"))
## 4. Run the funtion with the above curated data frame as input
## 5. The plots are saved in the directory "./data/"
##

plot4Graphs <- function(df) {
  if (is.null(df)) {
    message("please provide a valid data frame as input to the function")
    return(-1)
  }
  
  library(datasets)
  png("./data/plot4.png",width=480,height=480)
  par(mfrow=c(2,2))
  ##hist(df$Global_active_power,col="RED", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  plot(c1Data1$DateTime, c1Data1$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  plot(c1Data1$DateTime, c1Data1$Voltage, type="l", ylab="Voltage", xlab="datetime")
  plot(c1Data1$DateTime, c1Data1$Sub_metering_1, type="l", ylab="Energy Sub Metering", xlab="")
  lines(c1Data1$DateTime, c1Data1$Sub_metering_2, col="BLUE", type="l")
  lines(c1Data1$DateTime, c1Data1$Sub_metering_3, col="RED", type="l")
  legend("topright",col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1)
  plot(c1Data1$DateTime, c1Data1$Global_reactive_power, type="l", ylab="Global Reactive Power", xlab="datetime")
  dev.off() 
}