dataFile <- "household_power_consumption.txt"
x <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
x<-x[(x[,1]=="1/2/2007")|(x[,1]=="2/2/2007"),]
#head(x)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width=480, height=480)
plot(datetime,x$Sub_metering_1,type="l",lty=0,ylab="Energy Submetering",xlab="")

lines(datetime,x$Sub_metering_1, type="l")
lines(datetime,x$Sub_metering_2,col="red", type="l")
lines(datetime,x$Sub_metering_3,col="blue", type="l")
legend("topright",lty=1, lwd=2.5,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
