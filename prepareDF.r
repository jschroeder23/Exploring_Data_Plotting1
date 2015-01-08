#Load file "household_power_consumption" from disk into data frame called pow
pow <- read.csv(
  "~/Analytics course/coursera Exploratory Data Analysis/project 1/power consumption/household_power_consumption.txt", sep=";",
  stringsAsFactors=FALSE)

## create subset of pow named power2 from 2 days of data feb 1-2,2007
power2 <- subset(pow,pow$Date == "2/1/2007" | pow$Date == "2/2/2007")

#create DateTime field in date format POSIXlt
power2$DateTime <- paste(power2$Date, power2$Time)
power2$DateTime <- strptime(power2$DateTime, format = "%m/%d/%Y %H:%M:%S")


