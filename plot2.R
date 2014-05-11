setwd("G:\\Projects\\R\\Exploratory\\project1\\ExData_Plotting1")

dataFile <- read.table("h1.txt", sep=";", header=T)
dataFile$Date <- as.Date(dataFile$Date,format="%d/%m/%Y")
d1 <- paste(dataFile$Date,strptime(dataFile$Time,format="%hh:%mm:%ss"))
dataFile$DateTime <- as.POSIXct(d1)

with(dataFile, points(Global_intensity,DateTime,col="red"))
with(dataFile, plot(Global_active_power,type="l",xaxt="n",xlab="", ylab="Global Active Power (kilowatts)"))
axis(1, at=c(min(dataFile$DateTime), min(dataFile$DateTime)+86400, min(dataFile$DateTime)+2*86400),labels=c("Thu","Fri","Sat"))
#print(min(dataFile$DateTime)+86400)