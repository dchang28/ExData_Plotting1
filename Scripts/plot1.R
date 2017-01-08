setwd("C:/Users/Dan/Desktop/Coursera Data Science/Exploratory Data Analysis/Week 1")


##Load dataset
cleandata <- read.table("./data/modified_household_power_consumption.txt", 
        header=TRUE , sep='|')

cleandata$timedata<-as.POSIXlt(cleandata$timedata)


##Specify PNG dimensions
png(filename = './plot1.png', width = 480, height = 480, units='px')


##Plot 1
hist(cleandata$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()
