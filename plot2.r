# Project 1, Part 2
# Data is in /users/username/Documents.

originalDataFile = "household_power_consumption.txt"
originalData = read.table(originalDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData = originalData[originalData$Date %in% c("1/2/2007","2/2/2007") ,]

#Plot

dateTime = strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower = as.numeric(subsetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
