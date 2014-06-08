#GetData.R downloads (if necessary) and reads the data into R.
freshData <- function() {
    if(!file.exists('household_power_consumption.txt')){
        print("downloading data...")
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 'household_power_consumption.zip', method="curl")
        print("extracting data...")
        unzip('household_power_consumption.zip')
        unlink('household_power_consumption.zip')
    }
    print('loading data...')
    data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings=c("?"))
    data$DateTime <- as.POSIXct(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")
    mySubset <- subset(data, DateTime>=as.POSIXct('2007-02-01 00:00:00') & DateTime<=as.POSIXct('2007-02-02 23:59:59'))
    return(mySubset)
}