#setwd("G:\\Projects\\R\\Exploratory\\project1\\ExData_Plotting1")

dataFile <- read.table("h1.txt", sep=";", header=T,as.is=TRUE)
dataFile$Date <- as.Date(dataFile$Date,format="%d/%m/%Y")
d1 <- paste(dataFile$Date,dataFile$Time)
dataFile$DateTime <- as.POSIXct(d1)


par(mfrow=c(1,1),new=F)
with(dataFile,plot(DateTime, Sub_metering_1,type="l", xaxt="n",ylab="Energy Submetering",xlab=""))
with(dataFile, points(DateTime,Sub_metering_2,col="red",type="l"))
with(dataFile, points(DateTime,Sub_metering_3,col="blue",type="l"))

mini <- min(dataFile$DateTime)
axis(side=1, at=c(mini, mini+86400, mini+2*86400),labels=c("Thu","Fri","Sat"))
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("black","red","blue"),seg.len=.5)

dev.copy(png,"figure\\plot3.png",width=480,height=480)
dev.off()