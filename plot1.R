source("load_data.R")
normalize <- function(x){
  (x - min(x)) * 10/ (max(x) - min(x))
}

plot1 <- function(){
  data <- load_data()
  
  png("plot1.png")
  xlabel = "Global Active Power (kilowatts)"
  title = "Global Active Power"
  hist(data$Global_active_power, xlab=xlabel, main=title, col="red")
  dev.off()
}

plot1()