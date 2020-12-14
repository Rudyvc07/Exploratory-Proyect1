###PARCELA I

#### CARGAR LA DATA

data_proyect<- read.table("household_power_consumption.txt",skip=1,sep=";")
names(data_proyect) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subset_data_proyect <- subset(data_proyect,data_proyect$Date=="1/2/2007" | data_proyect$Date =="2/2/2007")

png("plot1.png", width=480, height=480)

####funsion Hist
hist(as.numeric(as.character(subset_data_proyect $Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

##titulo
title(main="Global Active Power")

dev.off()
