x<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
x<-x[(x[,1]=="1/2/2007")|(x[,1]=="2/2/2007"),]
png(filename = "plot2.png", width=480, height=480)
plot(x$Time,x$Global_active_power,ylab="Global Active Power(kilowatts)",xaxt="n",pch=20)
axis(1, labels = c("Thu", "Fri", "Sat"), at = c(0,720,1440))
dev.off()