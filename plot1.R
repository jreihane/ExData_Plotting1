setwd("G:\\Projects\\R\\Exploratory\\project1\\ExData_Plotting1")

dataFile <- read.table("h1.txt", sep=";", header=T)
dataFile$Date <- as.Date(dataFile$Date,format="%y/%m/%d")
#dataFile$DateTime <- weekdays(dataFile$Date)
dataFile$DateTime <- as.POSIXct(dataFile$Date)
#print(weekdays(dataFile$Date))
#dataFile$Time <- strptime(dataFile$Time,format="%H:%M:%S","%a")
#colClasses=c("Date","time","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
#names(dataFile) <- dataFile[1,]
#dataFile <- dataFile[]
#print(names(dataFile))
#print(dataFile$Date)
#2007-02-01 and 2007-02-02
#print(dataFile[dataFile$Date])
#print(dataFile[dataFile$"Date" == as.Date("16/12/2006")])
#dat1 <- dataFile[as.Date(as.character(dataFile$Date)) == as.Date("16/12/2006")]
#with(dataFile, plot(Date, Global_intensity,type="n"))
#with(subset(dataFile,Date == "16/12/2006"), points(Date, Global_intensity, col="green"))
#with(subset(dataFile,Date == "10/5/2007"), points(Date, Global_intensity, col="red"))
par(bg="white")
with(dataFile, points(Date, Global_intensity, col="red"))
#with(dataFile, hist(Global_active_power))
with(dataFile, hist(Global_active_power,breaks=11,col="red",xlab="Global Active Power (kilowatts)"))
#dat1 <- dataFile#subset(dataFile,weekdays(dataFile$Date) %in% c("Friday","Tuesday","Saturday"))
#dd <- min(dataFile[weekdays(dataFile$Date) == "Thusday",])
#,min=min(range(dataFile$Date)),max=max(range(dataFile$Date))
#axis(1, at=c(min(dat1$DateTime), min(dat1$DateTime)+86400,  min(dat1$DateTime)+2*86400),labels=c("Thu","Fri","Sat"))
#with(dat1, plot(Global_active_power,type="l",xaxt="n"))
#axis(1, at=c(min(dat1$DateTime), min(dat1$DateTime)+86400, min(dat1$DateTime)+2*86400),labels=c("Thu","Fri","Sat"))
#axis(1,at=c(1,2,4),labels=c("1","2","4"))
#print(min(dat1$DateTime)+86400)
#with(subset(dataFile,Date == "2/2/2007"), hist(Global_active_power,breaks=6))