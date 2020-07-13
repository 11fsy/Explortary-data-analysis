data11 <- read.table("assignment 1.txt", header = TRUE, sep = ";")
data <- rbind(data11[data11$Date == "1/2/2007", ], data11[data11$Date == "2/2/2007", ])
data$DateTime <- strptime(paste(data$Date, data$Time, sep = ""), "%d/%m/%Y %H:%M")
png(filename = "plot2.png", width = 480, height = 480)
plot(data$DateTime, data$Global_active_power, xlab = "", ylab = "Global Active power(kilowatts)", type = "l")
dev.off
