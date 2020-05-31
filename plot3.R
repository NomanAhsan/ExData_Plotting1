data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings = "?" ,stringsAsFactors=FALSE, dec=".")
subset <- subset(data,data$Date=="1/2/2007" | data$Date =="2/2/2007")



#### Sub Setting Data ###
DateTime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GAP <- as.numeric(subSet$Global_active_power)
Metering1 <- as.numeric(subSet$Sub_metering_1)
Metering2 <- as.numeric(subSet$Sub_metering_2)
Metering3 <- as.numeric(subSet$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(DateTime, Metering1, type="l", ylab="Energy SubMetering", xlab="")
lines(DateTime,Metering2, type="l", col="blue")
lines(DateTime,Metering3, type="l", col="red")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "blue", "red"))
dev.off()
