data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings = "?" ,stringsAsFactors=FALSE, dec=".")
subSet <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")


### SubSetting Data ###
DateTime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subSet$Global_active_power)
GRP <- as.numeric(subSet$Global_reactive_power)
Voltage <- as.numeric(subSetData$Voltage)
Metering1 <- as.numeric(subSet$Sub_metering_1)
Metering2 <- as.numeric(subSet$Sub_metering_2)
Metering3 <- as.numeric(subSet$Sub_metering_3)


png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()