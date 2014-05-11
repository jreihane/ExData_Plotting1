setwd("G:\\Projects\\R\\Exploratory\\project1\\ExData_Plotting1")

dataFile <- read.table("h1.txt", sep=";", header=T)
dataFile$Date <- as.Date(dataFile$Date,format="%d/%m/%Y")
d1 <- paste(dataFile$Date,strptime(dataFile$Time,format="%H:%M:%S"))
dataFile$DateTime <- as.POSIXct(d1)

par(mfrow=c(2,2))


with(dataFile, plot(Global_active_power,type="l",xlab="", ylab="Global Active Power"))


with(dataFile, plot(Voltage,type="l",xlab="", ylab="Voltage"))
with(dataFile, plot(Sub_metering_1,type="l",xlab="", ylab="Energy Sub metering",xlim=c(min(DateTime),max(DateTime))))
with(dataFile, plot(Global_reactive_power,type="l"))