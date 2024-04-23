powerdata = subset(read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt"), 
                   Date %in% c("1/2/2007", "2/2/2007"))
png("plot2.png")

plot(powerdata$Global_active_power, type = "l", xaxt = "n",
     xlab = "", ylab = "Global Active Power (kilowatts)")

axis(1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

dev.off()