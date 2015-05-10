dataFile <- "household_power_consumption.txt"
x <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
x<-x[(x[,1]=="1/2/2007")|(x[,1]=="2/2/2007"),]

datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
#hist(as.numeric(x$Global_active_power),xlab="Global Active Power(kilowatts)",col="red",main="Global Active Power")
plot(datetime, subSetData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(datetime, subSetData$Voltage, type="l", xlab="datetime", ylab="Voltage")
#
plot(datetime,x$Sub_metering_1,type="l",lty=0,ylab="Energy Submetering",xlab="")
lines(datetime,x$Sub_metering_1, type="l")
lines(datetime,x$Sub_metering_2,col="red", type="l")
lines(datetime,x$Sub_metering_3,col="blue", type="l")
legend("topright",lty=1,bty="n", lwd=2.5,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#, cex=.4
plot(datetime, subSetData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()