## Install dplyr library, download if needed


if(!is.element('dplyr', installed.packages()[,1]))
{install.packages('dplyr')
}else {print("dplyr library already installed")}

## load libraries
library(dplyr)

## read into data table, then subset
## assumes txt file containing the data - household_power_consumption.txt -  is in the level one above the working directory
## text file uses ";" as a separator
## missing values are "?" - replace with "NA"
usage <- read.table("../household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)

## subset to obtain two days in February we're interested in
## two days, 24 hours/day, one reading each minute - total 2880 rows in subset
subset <- usage[(usage$Date == "1/2/2007" | usage$Date == "2/2/2007"), ]

## Date and Time columns are factors
## Combine into one column to convert into Date/Time object
Date_time_chars <- with(subset, paste(subset$Date, subset$Time))
format <- "%d/%m/%Y %H:%M:%S"

## convert to date and time object ("POSIXct" "POSIXt")
Date_time <- strptime(Date_time_chars, format = format)

## create new data table, replacing the former date and time columns with the new date_time column
febOneTwo <- cbind(Date_time, select(subset, Global_active_power:Sub_metering_3))

## This data table is the one used for the plots 
