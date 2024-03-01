library(waveband)
library(VSPline)
set.seed(2016)
N = 100
velocity    <- test.data(type = "doppler", n = N, signal = 1, rsnr = 7, plotfn = TRUE)
set.seed(2016)
position    <- SimuData(velocity$y,7)
simulatedata<- data.frame(t=velocity$x,y=position$xnoise,v=velocity$ynoise,boom=0)