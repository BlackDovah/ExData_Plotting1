powerdata = subset(read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt"), 
                   Date %in% c("1/2/2007", "2/2/2007"))

png("plot3.png")

par(mar = c(2,4,6,2))

plot(powerdata$Sub_metering_1, type = "l", ylim = c(0,30), xaxt = "n", ygap.axis = 10, 
     xlab = "", ylab = "Energy sub metering")
par(new = T)
plot(powerdata$Sub_metering_2, type = "l", ylim = c(0,30), xaxt = "n", ygap.axis = 10, 
     xlab = "", ylab = "Energy sub metering", col = "red")
par(new = T)
plot(powerdata$Sub_metering_3, type = "l", ylim = c(0,30), xaxt = "n", ygap.axis = 10, 
     xlab = "", ylab = "Energy sub metering", col = "blue")

axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()