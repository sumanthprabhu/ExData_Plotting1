source("load_data.R")

plot2 <- function() {
  data <- load_data()
  
  #width and height seem to be default
  png(filename = "plot2.png")
  ylabel = "Global Active Power (kilowatts)"
  plot(data$Date_Time, data$Global_active_power, type="l", ylab=ylabel, xlab="")
  dev.off()
}

plot2()