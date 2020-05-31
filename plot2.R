### PLOT 2 ###

data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings = "?" ,stringsAsFactors=FALSE, dec=".")
subSet <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

###Getting Date and Time##
DateTime <- strptime(paste(subSet$Date, subSet$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

GAP <- as.numeric(subSet$Global_active_power)

### Plotting Graph ###

png("plot2.png", width=480, height=480)
plot(DateTime, GAP , type="l", xlab="", ylab="Global Active Power(kilowatts)")
dev.off()
