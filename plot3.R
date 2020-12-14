###PARCELA III

data_proyect<- read.table("household_power_consumption.txt",skip=1,sep=";")
names(data_proyect) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subset_data_proyect <- subset(data_proyect,data_proyect$Date=="1/2/2007" | data_proyect$Date =="2/2/2007")

##Transformar variables de fecha y hora de caracteres
subset_data_proyect$Date <- as.Date(subset_data_proyect$Date, format="%d/%m/%Y")
subset_data_proyect$Time <- strptime(subset_data_proyect$Time, format="%H:%M:%S")
subset_data_proyect[1:1440,"Time"] <- format(subset_data_proyect[1:1440,"Time"],"2007-02-01 %H:%M:%S")
subset_data_proyect[1441:2880,"Time"] <- format(subset_data_proyect[1441:2880,"Time"],"2007-02-02 %H:%M:%S")

png("plot3.png", width=480, height=480)

##Funciones basicas de trama
plot(subset_data_proyect$Time,subset_data_proyect$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(subset_data_proyect,lines(Time,as.numeric(as.character(Sub_metering_1))))
with(subset_data_proyect,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(subset_data_proyect,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##Titulo del grafico
title(main = "Energy sub-metering")

dev.off()
