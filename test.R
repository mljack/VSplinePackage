library(VSPline)

set.seed(1234)
n <- 100
s <- seq(0,2*pi,length=n)
y <- sin(s) + rnorm(n)*0.3
v <- cos(s) + rnorm(n)*0.3
simuData <- data.frame(t=s,y=y,v=v)

#pa <- c(1,1)
#fitted   <- fitVSP(simuData,pa)
fitted   <- fitVSP(simuData)

print(simuData$t)
print("==============")
print(fitted$vsp$t)

png(filename = "sine_test.png", width = 1620, height = 800) 
plot(s,y, pch=16, cex=1.5, col = "red")
points(s,v, pch=16, cex=1.5, col = "blue")
points(fitted$vsp$t,fitted$vsp$y,col="red",type="l")
points(fitted$vsp$t,fitted$vsp$v,col="blue",type="l")
legend("topleft", inset=.05, pch=16, cex=1.5, col=c("red", "blue"), legend=c("y", "v"))
dev.off()