## run script to create data table needed for this plot
source("febOneTwo.R")

## create png device
png(filename = "plot1.png", width=480, height=480, units="px", bg="white")

## adjust outer margins around graph, add space on left
par(oma = c(0,1,0,0))

## create histogram
hist(febOneTwo$Global_active_power, col="red", ylab="Frequency", xlab="Global Active Power (kilowatts)", main="Global Active Power")

## close device
dev.off()