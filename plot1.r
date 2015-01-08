par(cex=.7)
hist(power2$Global_active_power,
       main = "Global Active Power ",
       xlab = "Global Active Power (kilowatts)",
       col = "red",
       xlim=c(0, 6),
       ylim = c(0,1200),
       xaxt='n'
)
        
axis(1,at=c(0,2,4,6)) 

## Copy my plot to a PNG file
dev.copy(png, file = "plot1.png",width = 480, height = 480, units = "px") 
dev.off()  ## Don't forget to close the PNG device!

