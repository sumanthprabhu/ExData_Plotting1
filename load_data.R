filedownload <- function(URL, name){
  if(!file.exists(name)){
    download.file(URL, destfile=name)
  }
  name
}

load_data <- function(){
  if(file.exists("data.csv")){
    data = read.csv("data.csv")
    format = "%d/%m/%Y %H:%M:%S"
    data$Date_Time <- strptime(paste(data$Date, data$Time), format)
  }
  else{
    path = "https://d396qusza40orc.cloudfront.net/"
    path = paste(path, "exdata%2Fdata%2Fhousehold_power_consumption.zip")
    
    name = filedownload(path, "data.zip")
    file = unz(name, "data.txt")
    
    data <- read.table(file, sep=';', header=TRUE, na.strings="?")
    data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"), ]
    
    format = "%d/%m/%Y %H:%M:%S"
    data$Date_Time <- strptime(paste(data$Date, data$Time), format)
    
    write.csv(data, "data.csv")
  }
  data
}