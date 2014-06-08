#GetData.R downloads (if necessary) and reads the data into R.
source("./GetData.R")

myData <- freshData()

png("Plot2.png", width = 480, height = 480, units = "px")

with(myData, plot(Global_active_power ~ DateTime, xlab="", ylab="Global Active Power (kilowatts)", col="black", type="l", lwd=1))

dev.off()