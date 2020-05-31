### Plot 1 ###

data <- read.table("household_power_consumption.txt",skip=1,sep=";",na.strings="?")

subsetGAP <- data[data$V1 %in% c("1/2/2007","2/2/2007") ,]

GAP <- as.numeric(subsetGAP$V3)
png("plot2.png", width=480, height=480)
hist(GAP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


