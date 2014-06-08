source("GetData.R")

myData <- freshData()

png("Plot1.png", width = 480, height = 480, units = "px")

with(myData, hist(Global_active_power, ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col="red", main="Global Active Power"))

dev.off()