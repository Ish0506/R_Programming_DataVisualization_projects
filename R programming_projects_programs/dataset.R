stats <- read.csv(file.choose())
stats
nrow(stats)
ncol(stats)
head(stats)
tail(stats)
str(stats)
summary(stats)
head(stats)
stats[3, 3]
stats$Internet.users[2]
stats[1:10,]
stats[c(4,100),]
is.data.frame(stats[1,])
head(stats)
filter<-stats$Internet.users<2
stats[filter,]
stats[stats$Birth.rate>40,]
install.packages("ggplot2")
library(ggplot2)
qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group,y=Birth.rate, size = I(10), color=I("blue"))
qplot(data = stats, x=Internet.users, y = Birth.rate, size=I(3),colour=Income.Group)