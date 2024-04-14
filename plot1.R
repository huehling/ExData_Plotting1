# Read the text file
household_power_consumption <- read.table("household_power_consumption.txt", 
                                          header = TRUE, 
                                          sep = ";",
                                          na.strings = "?") 

# Convert the Date column to Date format
household_power_consumption$Date <- as.Date(household_power_consumption$Date, format="%d/%m/%Y")

# Filter for dates 2007-02-01 and 2007-02-02
subset_data <- subset(household_power_consumption, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))

# Plot 1
hist(as.numeric(subset_data$Global_active_power),breaks=6,col="red",main="Global Active Power", xlab="Global Active Power(kilowatts")
dev.copy(png,"plot1.png")
dev.off()
