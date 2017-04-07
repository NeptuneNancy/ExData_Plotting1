## run script to create data table needed for this plot
source("febOneTwo.R")

## create png device
png(filename = "plot4.png", width=480, height=480, units="px", pointsize=12, bg="white")

## create a 2 x 2 grid and put a differenct plot in each quadrant
## add a bit of a margin on the bottom
par(mfrow = c(2,2), oma=c(2,0,0,0), cex.lab = 0.95)

## adjust margins around each graph
par(mar = c(4,5,4,2))

## create the four plots
## upper left

plot(febOneTwo$Global_active_power ~ febOneTwo$Date_time, type="l", ylab="Global Active Power", xlab="")
 
## upper right
## remove margin on left, add on right

plot(febOneTwo$Voltage ~ febOneTwo$Date_time, type="l", ylab="Voltage", xlab="datetime")

## lower left
plot(febOneTwo$Sub_metering_1 ~ febOneTwo$Date_time, type="s", ylab="Energy sub metering", xlab="")
points(febOneTwo$Sub_metering_2 ~ febOneTwo$Date_time, type="s", col="red")
points(febOneTwo$Sub_metering_3 ~ febOneTwo$Date_time, type="s", col="blue")
legend("topright", lty=1, bty = "n", cex = 0.85, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


## lower right

plot(febOneTwo$Global_reactive_powe ~ febOneTwo$Date_time, type="l", ylab="Global_reactive_power", xlab="datetime")

## close device
dev.off()