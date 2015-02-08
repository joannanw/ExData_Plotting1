## Exploratory Data Analysis
## Course Project 1 Plot 2
## By Joanna Widjaja, Feb 7, 2015

raw <- read.table(file = "./exdata-data-household_power_consumption/household_power_consumption.txt",
                  nrows = 2880, skip = 66637,stringsAsFactors = FALSE, sep = ';')
label <- read.table(file = "./exdata-data-household_power_consumption/household_power_consumption.txt",
                    nrows = 1, sep = ';', header = TRUE)
names(raw) <- names(label)
rm(label)

# Open graphic device
png("plot2.png", width = 480, height = 480)
plot(raw$Global_active_power, type = "l", axes = FALSE, frame.plot = TRUE,
     ylab = "Global Active Power (kilowatts)", xlab = "") # Set line chart with type
axis(1, at = c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
# Close graphic device
dev.off()