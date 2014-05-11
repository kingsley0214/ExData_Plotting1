setwd("C:\\rClass\\Exploratory")
file <- "./data/household_power_consumption.txt"
data <- read.table(file,sep=";",header=TRUE,na.strings="?")
data$Date2 <- as.Date(data$Date, "%d/%m/%Y")
data2 <- subset(data, Date2=="2007/2/1"|Date2=="2007/2/2")
png('Assignment1Plot2.png')
data2$DateTime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S") 
plot(data2$DateTime,as.numeric(as.character(data2$Global_active_power)),type='l',ylab="Global Active Power (kilowatts)",main="Global Active Power",cex.lab=.75,cex.axis=.75,cex.main=.8,xlab = "")
dev.off()
