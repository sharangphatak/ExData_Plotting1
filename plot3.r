# Project 1, Part 3
# Data is in /users/username/Documents.

originalDataFile = "household_power_consumption.txt"
originalData = read.table(originalDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData = originalData[originalData$Date %in% c("1/2/2007","2/2/2007") ,]

dateTime = strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower = as.numeric(subsetData$Global_active_power)
subMetering1 = as.numeric(subsetData$Sub_metering_1)
subMetering2 = as.numeric(subsetData$Sub_metering_2)
subMetering3 = as.numeric(subsetData$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(dateTime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(dateTime, subMetering2, type="l", col="red")
lines(dateTime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
