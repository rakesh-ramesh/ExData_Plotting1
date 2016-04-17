readData <- function(){
  library(data.table)
  library(dplyr)
  powerData <- read.table("household_power_consumption.txt",header=TRUE, sep=";", na.strings = "?", 
                          colClasses = c("character","character",rep("numeric",7)), stringsAsFactors = FALSE)
  idxs = grep("^1/2/2007|^2/2/2007",powerData$Date) #Filter based on Date. Date should be either 1/2/2007 or 2/2/2007
  powerData <- powerData[idxs,]
  powerData$Date <- strptime(paste(powerData$Date,powerData$Time), format="%d/%m/%Y %H:%M:%S")
  powerData$Time = NULL
  return(powerData)
}

