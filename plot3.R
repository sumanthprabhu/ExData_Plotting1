source("load_data.R")

plot3 <- function(){
  data = load_data()
  
  png(filename = "plot3.png")
  comp = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  
  ylabel = "Energy sub metering"
  plot(data$Date_Time, data$Sub_metering_1, type="l", ylab=ylabel, xlab="")
  
  lines(data$Date_Time, data$Sub_metering_2, type="l", col="red")
  lines(data$Date_Time, data$Sub_metering_3, type="l", col="blue")
  legend("topright", col=c("black","blue","red"), legend=comp, lwd=1)
  dev.off()
}

plot3()