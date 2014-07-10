source("load_data.R")

plot4 <- function(){
  data = load_data()
  
  png(filename = "plot4.png")
  par(mfrow=c(2, 2))
  
  plot(data$Date_Time, data$Global_active_power, xlab="", ylab="Global Active Power", type="l")
  plot(data$Date_Time, data$Voltage, xlab="datetime", ylab="Voltage", type="l")
  
  comp = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  
  plot(data$Date_Time, data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
  lines(data$Date_Time, data$Sub_metering_2, type="l", col="red")
  lines(data$Date_Time, data$Sub_metering_3, type="l", col="blue")
  
  legend("topright", col=c("black","blue","red"), legend=comp, lwd=1, bty="n")
  
  plot(data$Date_Time, data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")  
  
  dev.off()
}

plot4()