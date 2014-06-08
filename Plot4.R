#GetData.R downloads (if necessary) and reads the data into R.
source("./GetData.R")

myData <- freshData()


png("Plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2))

with(myData, plot(Global_active_power ~ DateTime, xlab="", ylab="Global Active Power", col="black", type="l", lwd=1))
with(myData, plot(Voltage ~ DateTime, xlab="datetime", col="black", type="l", lwd=1))
with(myData, plot(DateTime, Sub_metering_1, xlab="", ylab="Energy Sub Metering", col="black", type="n", lwd=1))
with(myData, lines(DateTime, Sub_metering_1, col="black", type="l"))
with(myData, lines(DateTime, Sub_metering_2, col="red", type="l"))
with(myData, lines(DateTime, Sub_metering_3, col="blue", type="l"))
legend("topright", lty=1, bty="n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
with(myData, plot(Global_reactive_power ~ DateTime, xlab="datetime", col="black", type="l", lwd=1))

dev.off()