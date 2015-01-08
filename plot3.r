par(cex=.75)
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
       col = c("black", "red", "blue"),
       lty = c(1, 1, 1)
       )



## Copy my plot to a PNG file
dev.copy(png, file = "plot3.png",width = 480, height = 480, units = "px") 
dev.off()  ## Don't forget to close the PNG device!



