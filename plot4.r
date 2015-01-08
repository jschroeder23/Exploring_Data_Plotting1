par(mfrow = c(2, 2),cex=.7)
### PLOT 1 #####################################
plot(power2$DateTime,power2$Global_active_power,
     type = "l", 
     ylab = "Global Active Power",
     xlab = "",
     ylim = c(0,6),
     yaxt='n'
)

axis(2,at=c(0,2,4,6)) 
### PLOT 2 ########################################


plot(power2$DateTime,power2$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime",
     ylim= c(234,246),
     yaxt='n'
)
axis(2,at=c(234,238,242,246)) 
##### PLOT 3 ###########################################
 

plot(power2$DateTime,power2$Sub_metering_3,
     type = "l",
     ylab = "Energy sub metering",
     xlab = "",
     col = "blue",
     ylim = c(0,30),
     yaxt='n'
)
lines(power2$DateTime,power2$Sub_metering_2,col = "red")
lines(power2$DateTime,power2$Sub_metering_1)

     axis(2,at=c(0,10,20,30)) 

     legend("topright",c("Sub_metering_1   ","Sub_metering_2   ","Sub_metering_3   "),
         horiz=FALSE,
         cex = 0.5,
         col = c("black", "red", "blue"),
         lty = c(1, 1, 1)
)
##### PLOT 4 ############################################

plot(power2$DateTime,power2$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime",
     ylim = c(0,0.5),
     yaxt = 'n'     
   
)
     axis(2,at=c(0,0.1,0.2,0.3,0.4,0.5)) 
    

## Copy my plot to a PNG file

dev.copy(png, file = "plot4.png",width = 480, height = 480, units = "px") 
dev.off()  ## Don't forget to close the PNG device!