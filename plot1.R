powerdata = subset(read.csv2("exdata_data_household_power_consumption/household_power_consumption.txt"), 
                   Date %in% c("1/2/2007", "2/2/2007"))

png("plot1.png")

hist(as.numeric(powerdata$Global_active_power), ylim = c(0,1200), col = "red", 
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

dev.off()