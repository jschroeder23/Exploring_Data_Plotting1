par(cex=.75)
plot(power2$DateTime,power2$Global_active_power,type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = "",
     ylim = c(0,6),
     yaxt='n'
     )

axis(2,at=c(0,2,4,6)) 

## Copy my plot to a PNG file
dev.copy(png, file = "plot2.png",width = 480, height = 480, units = "px") 
dev.off()  ## Don't forget to close the PNG device!
