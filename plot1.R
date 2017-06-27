library(readr)
power <- read_delim("D:/Google Drive/stats begins here/Data Science -John Hopkins/Course 4 Exploratory Data Analysis/Week 1 Programming Assignment/household_power_consumption.txt",";", escape_double = FALSE, trim_ws = TRUE)
d<-as.Date(power$Date,"%d/%m/%Y")
subpower<-power[d=="2007/02/01" | d=="2007/02/02",]
png(filename = "plot1",width=480,height=480)
with(subpower,hist(Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power"))
dev.off()
