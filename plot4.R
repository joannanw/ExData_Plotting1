## Exploratory Data Analysis
## Course Project 1 Plot 3
## By Joanna Widjaja, Feb 7, 2015

raw <- read.table(file = "./exdata-data-household_power_consumption/household_power_consumption.txt",
                  nrows = 2880, skip = 66637,stringsAsFactors = FALSE, sep = ';')
label <- read.table(file = "./exdata-data-household_power_consumption/household_power_consumption.txt",
                    nrows = 1, sep = ';', header = TRUE)
names(raw) <- names(label)
rm(label)

# Open graphic device
png("plot4.png", width = 480, height = 480)
par(mfcol = c(2,2))

# Top left plot
plot(raw$Global_active_power, type = "l", axes = FALSE, frame.plot = TRUE,
     ylab = "Global Active Power", xlab = "") # Set line chart with type
axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))
axis(2)

# Bottom left plot
plot(raw$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", axes = FALSE, frame.plot = TRUE)
lines(raw$Sub_metering_2, col = "red")
lines(raw$Sub_metering_3, col = "blue")
axis(1, at = c(0,1440,2880), labels = c("Thu","Fri", "Sat"))
axis(2)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1, lty = c(1,1,1), bty = "n")

# Top right plot
plot(raw$Voltage, type = "l", ylab = "Voltage", xlab = "datetime", axes = FALSE, frame.plot = TRUE)
axis(1, at = c(0,1440,2880), labels = c("Thu","Fri", "Sat"))
axis(2)

# Bottom right plot
plot(raw$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime", axes = FALSE, frame.plot = TRUE)
axis(1,at = c(0,1440,2880), labels = c("Thu","Fri", "Sat"))
axis(2)

# Close graphic device
dev.off()