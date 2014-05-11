setwd("G:\\Projects\\R\\Exploratory\\project1\\ExData_Plotting1")

dataFile <- read.table("h1.txt", sep=";", header=T,as.is=TRUE)
dataFile$Date <- as.Date(dataFile$Date,format="%d/%m/%Y")
d1 <- paste(dataFile$Date,dataFile$Time)
dataFile$DateTime <- as.POSIXct(d1)


par(mfrow=c(1,1),new=F)
with(dataFile, plot(DateTime,Global_active_power,type="l",xaxt="n",xlab="", ylab="Global Active Power (kilowatts)"))

axis(1, at=c(min(dataFile$DateTime), min(dataFile$DateTime)+86400, min(dataFile$DateTime)+2*86400),labels=c("Thu","Fri","Sat"))

dev.copy(png,"figure\\plot2.png",width=480,height=480)
dev.off()