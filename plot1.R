library(datasets)

household_power<-read.table("household_power_consumption.txt",sep=";",nrows=2075259,header=TRUE,stringsAsFactors=FALSE,dec=".")


subs<-subset(household_power,Date=="1/2/2007"|Date=="2/2/2007")

gap<-as.numeric(subs$Global_active_power)

hist(gap,xlab="Global Active Power (kilowatts)",ylab="Frequency", col="red",main="Global Active Power")
dev.copy(png, "plot1.png")
dev.off()
