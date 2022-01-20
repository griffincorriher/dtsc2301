# Part 1
obj1 <- c(2,5,13,87,16,67,19)
mean(obj1)
var(obj1)
sd(obj1)
min(obj1)
max(obj1)
obj2 <- seq(26, 86, length.out = 10)
print(obj2)
obj3 <- rep(c("Red","White","Blue"),3)
print(obj3)
set.seed(42678)
A <- runif(1000)
B <- runif(1000)
X <- rnorm(1000)
Y <- rnorm(1000)
d <- data.frame(A,B,X,Y)
plot.default(d[1:2], main = "A vs B") # A vs B's scatterplot covers the entire plot
plot.default(d[3:4], main = "X vs Y") # X vs Y's scatterplot is more centered at the mean
# Part 2
# 2017, POPPY, TOTEXP. We expect a positive linear relationship between total school expenditure and state population in thousands

data1 <- read.csv("GOVSTIMESERIES.GS00SS01_data_with_overlays_2021-02-02T220534.csv", header=TRUE, stringsAsFactors=FALSE)
data2 <- read.csv("GOVSTIMESERIES.GS00SS19_data_with_overlays_2021-02-02T220636.csv", header=TRUE, stringsAsFactors=FALSE)
data1 <- subset(data1, select = -c(1:5,8:10,12))
data2 <- subset(data2, select = -c(1:5,8:10,12))
subset(data1,YEAR == "2017" & AGG_DESC=="TOTEXP")
subset(data2,YEAR == "2017" & AGG_DESC=="POPPY")
