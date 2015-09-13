# Project 1, Part 1
# Data is in /users/username/Documents.

originalDataFile = "household_power_consumption.txt"
originalData = read.table(originalDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData = originalData[originalData$Date %in% c("1/2/2007","2/2/2007") ,]

#plot the histogram
globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
