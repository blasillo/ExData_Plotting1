if (!file.exists("power_consumption.zip")) {
  download.file(url="http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",destfile="power_consumption.zip",method="curl")
  unzip("power_consumption.zip")
}

data<- read.table("household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

data$DateTime <- as.POSIXct(paste(data$Date, data$Time, sep=" "),format="%d/%m/%Y %H:%M:%S")

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

