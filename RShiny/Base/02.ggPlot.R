getwd()
library(ggplot2)
x=read.csv("LinData.csv")
x

ggplot(x, aes(x=Month, y=StockPrice)) 
ggplot(x, aes(x=Month, y=StockPrice)) + geom_point()
k<-ggplot(x, aes(x=Month, y=StockPrice)) + geom_point() + geom_smooth(method="lm") 
k
k + xlim(c(0, 10)) + ylim(c(0, 100))
g<-ggplot(x, aes(x=Month, y=StockPrice)) + geom_point() + geom_smooth(method="lm") 
g1 <- g + coord_cartesian(xlim=c(0,10), ylim=c(0, 20))  # zooms in
plot(g1)
g1<-ggplot(x, aes(x=Month, y=StockPrice)) + geom_point() + geom_smooth(method="lm") 
g1 + labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")

# or

g1 + ggtitle("Area Vs Population", subtitle="From midwest dataset") + xlab("Area") + ylab("Population")
ggplot(x, aes(x=Month, y=StockPrice)) + 
  geom_point(col="steelblue", size=10) +   # Set static color and size for points
  geom_smooth(method="lm", col="firebrick") +  # change the color of line
  coord_cartesian(xlim=c(0, 15), ylim=c(0, 100)) + 
  labs(title="Area Vs Population", subtitle="From Sales dataset", y="Population", x="Area", caption="Midwest Demographics")


gg <- ggplot(x, aes(x=Month, y=StockPrice)) + 
  geom_smooth(method="lm", col="firebrick", size=2) + 
  coord_cartesian(xlim=c(0, 10), ylim=c(0, 100)) + 
  labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest Demographics")
plot(gg)



