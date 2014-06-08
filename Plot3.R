#GetData.R downloads (if necessary) and reads the data into R.
source("./GetData.R")

myData <- freshData()


png("Plot3.png", width = 480, height = 480, units = "px")

with(myData, plot(DateTime, Sub_metering_1, xlab="", ylab="Energy Sub Metering", col="black", type="n", lwd=1))
with(myData, lines(DateTime, Sub_metering_1, col="black", type="l"))
with(myData, lines(DateTime, Sub_metering_2, col="red", type="l"))
with(myData, lines(DateTime, Sub_metering_3, col="blue", type="l"))
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()