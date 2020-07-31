#PLOT 1
#Loading the table into power
power <- read.table("household_power_consumption.txt",skip=1,sep=";")

#Add the field name
names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

#Select just the data from 1/2/2007 to 2/2/2007, inclusive
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#Open the png image file 480 x 480
png("plot1.png", width = 480, height = 480)

#Crate the chart
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

#Add the main title
title(main="Global Active Power")

#Close the png file
dev.off()

