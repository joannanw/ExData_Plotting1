## Exploratory Data Analysis
## Course Project 1 Plot 1
## By Joanna Widjaja, Feb 7, 2015

raw <- read.table(file = "./exdata-data-household_power_consumption/household_power_consumption.txt",
                  nrows = 2880, skip = 66637,stringsAsFactors = FALSE, sep = ';')
label <- read.table(file = "./exdata-data-household_power_consumption/household_power_consumption.txt",
                    nrows = 1, sep = ';', header = TRUE)
names(raw) <- names(label)
rm(label)

# Open graphic device
png("plot1.png", width = 480, height = 480)

# Declare histogram features
color <- c("red")
main <- "Global Active Power"
xlab <- "Global Active Power (kilowatts)"
# Plot histogram
hist(raw$Global_active_power, col = color, main = main, xlab = xlab, ylim = c(0,1200))
# Close graphic device
dev.off()