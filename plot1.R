plot1 <- function() {
# setwd('.')
# nr <-  2075259
# data <- read.table("household_power_consumption.txt",sep=";",header=TRUE,  
#                    nrows=nr, na.strings = "?",                  
#                    colClasses=c("character","character","numeric",                        
#                                 "numeric","numeric","numeric",                        
#                                 "numeric","numeric","numeric"))
# 
# data$Date <- strptime(data$Date,"%d/%m/%Y")
# data$Time <- strptime(data$Time,"%H:%M:%S")
# data <- data[,data$Date==strptime("01/02/2007","%d/%m/%Y") || data$Date==strptime("02/02/2007","%d/%m/%Y")]
# 
# png(file="plot1.png")
# hist(data$Global_active_power, col="red", xlab="Global_active_power (Kilowatts)")
# title(main="Global_active_power")
  
  data<- read.table("household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")
  
  #only keep the data for two days (2007-02-01 and 2007-02-02)
  data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007"))
  
  #construct plot 1--Global Active Power
  png("plot1.png", width=480, height= 480)
  
  hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency")
  title(main="Global Active Power")
  
  dev.off()

}
