x<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
y<-x[(x[,1]=="1/2/2007")|(x[,1]=="2/2/2007"),3]
z<-(as.numeric(as.character(y)))
png(filename = "plot1.png", width=480, height=480)
hist(z,xlab="Global Active Power(kilowatts)",col="red",main="Global Active Power")
dev.off()
