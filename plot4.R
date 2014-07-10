#plot4

png(filename="plot4.png", width=480, height=480)
par(mfcol=c(2,2))

# 1
plot(data$DateTime, data$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)",
     xlab="",
     col="black")

# 2

plot(data$DateTime,data$Sub_metering_1,  type="l",
     col="black",
     xlab="",
     ylab="Energy sub metering",
     main="")

lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")

legend("topright", lwd=1,lty=1,col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# 3

plot(data$DateTime, data$Voltage, type="l",
     ylab="Voltage",
     xlab="datetime",
     col="black")

# 4
plot(data$DateTime, data$Global_reactive_power, type="l",
     ylab="Global Rective Power",
     xlab="datetime",
     col="black")

dev.off()

