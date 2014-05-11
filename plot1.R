#setwd("G:\\Projects\\R\\Exploratory\\project1\\ExData_Plotting1")

dataFile <- read.table("h1.txt", sep=";", header=T,as.is=TRUE)
dataFile$Date <- as.Date(dataFile$Date,format="%d/%m/%Y")
d1 <- paste(dataFile$Date,dataFile$Time)
dataFile$DateTime <- as.POSIXct(d1)

par(bg="white")
with(dataFile, hist(Global_active_power,breaks=11,col="red",xlab="Global Active Power (kilowatts)"))