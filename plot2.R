# Read the text file
household_power_consumption <- read.table("household_power_consumption.txt", 
                                          header = TRUE, 
                                          sep = ";",
                                          na.strings = "?") 

# Convert the Date column to Date format
household_power_consumption$Date <- as.Date(household_power_consumption$Date, format="%d/%m/%Y")

# Filter for dates 2007-02-01 and 2007-02-02
subset_data <- subset(household_power_consumption, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# Plot 2
plot(as.numeric(subset_data$Global_active_power),main="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0,2,4,6))
box(lty = 1, col = 'black')
dev.copy(png,"plot2.png")
dev.off()
