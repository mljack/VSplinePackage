set.seed(1) 
s <- runif(50, min=0, max=10)
y <- rnorm(50, mean=10, sd=2)  
v <- rnorm(50, mean=5, sd=1)

# Plot (s,y)
plot(s, y, main="Scatterplot", 
     xlab="s", ylab="y", pch=19)

# Add (s,v) to same plot  
points(s, v, col="red", pch=19)

# Add legend
legend("topleft", inset=.05,
       pch=19, col=c("black", "red"), 
       legend=c("y", "v"))