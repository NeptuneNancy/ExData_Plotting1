## run script to create data table needed for this plot
source("febOneTwo.R")

## create png device
png(filename = "plot2.png", width=480, height=480, units="px", pointsize=12, bg="white")

## adjust outer margins around graph, add space on left
par(oma = c(0,1,0,0))

## create line plot
plot(febOneTwo$Global_active_power ~ febOneTwo$Date_time, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## close device
dev.off()