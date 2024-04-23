powerdata = subset(read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt"), 
                   Date %in% c("1/2/2007", "2/2/2007"))

png("plot4.png")

par(mfcol = c(2,2))

plot(powerdata$Global_active_power, type = "l", xaxt = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")

axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

#`````````````````````````````````````

plot(powerdata$Sub_metering_1, type = "l", ylim = c(0,40), xaxt = "n", yaxt = "n", ygap.axis = 10, 
     xlab = "", ylab = "Energy sub metering")
par(new = T)
plot(powerdata$Sub_metering_2, type = "l", ylim = c(0,40), xaxt = "n", yaxt = "n", ygap.axis = 10, 
     xlab = "", ylab = "Energy sub metering", col = "red")
par(new = T)
plot(powerdata$Sub_metering_3, type = "l", ylim = c(0,40), xaxt = "n", yaxt = "n", ygap.axis = 10, 
     xlab = "", ylab = "Energy sub metering", col = "blue")

axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, at = c(0, 10, 20, 30))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

#```````````````````````````````````````

plot(powerdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = "n")

axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

#````````````````````````````````````````

plot(powerdata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", xaxt = "n")

axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

#````````````````````````````````````````
dev.off()