library(datasets)

household_power<-read.table("household_power_consumption.txt",sep=";",nrows=2075259,header=TRUE,stringsAsFactors=FALSE,dec=".")


subs<-subset(household_power,Date=="1/2/2007"|Date=="2/2/2007")


dates_times<-paste(subs$Date,subs$Time)





sub1<-as.numeric(subs$Sub_metering_1)
sub2<-as.numeric(subs$Sub_metering_2)
sub3<-as.numeric(subs$Sub_metering_3)

dates_times_cov<-strptime(dates_times,format="%d/%m/%Y %H:%M:%S")


png( "plot3.png",width=480, height=480)

plot(dates_times_cov,sub1,type="l",ylab="Energy sub metering") 
lines(dates_times_cov,sub2,col="red", type="l")
lines(dates_times_cov,sub3,col="blue",type="l")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub metering 1","Sub metering 2","Sub metering 3"))


dev.off()
