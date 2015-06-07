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