setwd("C:/Users/Dan/Desktop/Coursera Data Science/Exploratory Data Analysis/Week 1")

##Load dataset
cleandata <- read.table("./data/modified_household_power_consumption.txt", 
                        header=TRUE , sep='|')
cleandata$timedata<-as.POSIXlt(cleandata$timedata)


##Specify PNG dimensions
png(filename = './plot3.png', width = 480, height = 480, units='px')


##Plot 3
plot(cleandata$timedata, cleandata$Sub_metering_1,type = "l",
     ylab = "Energy sub metering", xlab = "")
lines(cleandata$timedata, cleandata$Sub_metering_2, col = "red")
lines(cleandata$timedata, cleandata$Sub_metering_3, col = "blue")

legend("topright", col = c("black", "red", "blue"), lty=1,
       legend = c("Sub_metering_1", "Sub_metering_2", "sub_metering_3"))

dev.off()
