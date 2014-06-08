source("GetData.R")

myData <- if(!is.null(myData)) myData else freshData()

png("Plot1.png", width = 480, height = 480, units = "px")

with(myData, hist(Global_active_power, ylab = "Frequency", xlab = "Global Active Power (kilowats)", col="red", main="Global Active Power"))

dev.off()