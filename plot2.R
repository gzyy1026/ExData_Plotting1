library(datasets)

household_power<-read.table("household_power_consumption.txt",sep=";",nrows=2075259,header=TRUE,stringsAsFactors=FALSE)


subs<-subset(household_power,Date=="2/1/2007"|Date=="2/2/2007")


dates_times<-paste(subs$Date,subs$Time)





gap<-as.numeric(subs$Global_active_power)

dates_times_cov<-strptime(dates_times,format="%m/%d/%Y %H:%M:%S")
dev.new()

plot(dates_times_cov,gap,type="n",xlab="",ylab="Global Active Power(kilowatts)")
lines(dates_times_cov,gap) 


dev.copy(png, "plot2.png")
dev.off()
