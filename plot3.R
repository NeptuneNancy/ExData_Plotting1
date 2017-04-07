## run script to create data table needed for this plot
source("febOneTwo.R")

## create png device
png(filename = "plot3.png", width=480, height=480, units="px", pointsize=12, bg="white")

## adjust outer margins around graph, add space on left
par(oma = c(0,1,0,0))

## plot first line graph in black
plot(febOneTwo$Sub_metering_1 ~ febOneTwo$Date_time, type="s", ylab="Energy sub metering", xlab="")

## add lines for second set of data, using red
points(febOneTwo$Sub_metering_2 ~ febOneTwo$Date_time, type="s", col="red")

## add lines for third set of data, using blue
points(febOneTwo$Sub_metering_3 ~ febOneTwo$Date_time, type="s", col="blue")

## add legend in upper right, lty=1 adds lines to legend
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## close device
dev.off()