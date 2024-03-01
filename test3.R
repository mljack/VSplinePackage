library(waveband)
set.seed(2016)
N = 100
velocity    <- test.data(type = "doppler", n = N, signal = 1, rsnr = 7, plotfn = TRUE)
set.seed(2016)
position    <- SimuData(velocity$y,7)
simulatedata<- data.frame(t=velocity$x,y=position$xnoise,v=velocity$ynoise,boom=0)
#Available types are "blocks", "bumps", "heavi" (heavisine), and "doppler".
fitted <- fitVSP(simulatedata)
print(fitted)

png(filename = "test.png", width = 1620, height = 800) 
plot(simulatedata$t, simulatedata$y, pch=16, cex=1.5, col = "red")
points(simulatedata$t, simulatedata$ v / 10, pch=16, cex=1.5, col = "blue")
points(fitted$vsp$t, fitted$vsp$y, col = "red", type = "l")
points(fitted$vsp$t, fitted$vsp$v / 10, col = "blue", type = "l")
legend("topleft", inset=.05, pch=16, cex=1.5, col=c("red", "blue"), legend=c("y", "v"))
dev.off()