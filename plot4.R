source("read_data.R")
powerData <- readData()
png("plot4.png",width=480,height=480,units="px")
par(mfrow=c(2,2))
# Entry 1
plot(powerData$Date, powerData$Global_active_power,type="n", ylab="Global Active Power", xlab="")
lines(powerData$Date, powerData$Global_active_power)
# Entry 2
plot(powerData$Date, powerData$Voltage, type="n", xlab="datetime",ylab="Voltage")
lines(powerData$Date, powerData$Voltage)
# Entry 3
plot(powerData$Date, powerData$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")
lines(powerData$Date, powerData$Sub_metering_1)
lines(powerData$Date, powerData$Sub_metering_2, col="red")
lines(powerData$Date, powerData$Sub_metering_3, col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lwd=c(1,1,1), bty="n", bg=NA)
# Entry 4
plot(powerData$Date, powerData$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(powerData$Date, powerData$Global_reactive_power)
dev.off()