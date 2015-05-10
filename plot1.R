####### Plot 1: Histogram
#Load and subtract data
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Cleaning data
globalActivePower <- as.numeric(subSetData$Global_active_power)

#plot graph
png("plot1.png", width=480, height=480)
hist(globalActivePower,col="red",xlab="Global Active power(killowatts)",main="Global Active Power")
dev.off()
