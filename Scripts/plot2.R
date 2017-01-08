setwd("C:/Users/Dan/Desktop/Coursera Data Science/Exploratory Data Analysis/Week 1")


##Load dataset
cleandata <- read.table("./data/modified_household_power_consumption.txt", 
                        header=TRUE , sep='|')
cleandata$timedata<-as.POSIXlt(cleandata$timedata)


##Specify PNG dimensions
png(filename = './plot2.png', width = 480, height = 480, units='px')

##Plot 2
plot(cleandata$timedata, cleandata$Global_active_power,type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()
