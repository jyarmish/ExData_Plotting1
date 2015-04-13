x<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
#head(x)
x<-x[(x[,1]=="01/02/2007")|(x[,1]=="02/02/2007"),]
png(filename = "plot1.png", width=480, height=480)
hist(x$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off() 