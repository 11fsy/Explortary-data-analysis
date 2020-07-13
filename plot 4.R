data11 <- read.table("assignment 1.txt", header = TRUE, sep = ";", na.strings = "?")
data <- rbind(data11[data11$Date == "1/2/2007", ], data11[data11$Date == "2/2/2007", ])
data$DateTime <- strptime(paste(data$Date, data$Time, sep = ""), "%d/%m/%Y %H:%M")
png("4.png", width=480, height=480)
par(mfrow = c(2, 2))
plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active power", type = "l")
plot(data$DateTime, data$Voltage, xlab = "datatime", ylab = "Voltage", type = "l")   


plot(data$DateTime, data$Sub_metering_1, xlab = "", ylab = "Energy Sub Metering", type = "l")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")

plot(data$DateTime, data$Global_reactive_power, xlab = "", ylab = "Global_reactive_power", type = "l")
dev.off()
