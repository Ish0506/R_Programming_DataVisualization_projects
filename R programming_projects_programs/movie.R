getwd()
setwd("/Users/Hp/Desktop/R")
getwd()
movies<-read.csv("Movie-Ratings.csv")
head(movies)
col(movies)<-c("Film","Genre","CriticRating")
head(movies)
tail(movies)
str(movies)
fator(movies$Genre)
movies$Year<- factor(movies$Year)
#asthetics
library(ggplot2)
ggplot(data=movies, aes(x=Critic.Ratings, y=Audience.Ratings))

p<-ggplot(data=movies, aes(x=CriticRatings, y=AudienceRatings,color=Genre, size=BudgetMillions))

p + geom_point(aes(color=BudgetMiliions))
p + geom_point(aes(x=BudgetMiliions))

#mapping
r<-ggplot(data=movies, aes(x=CriticRatings , y=AudienceRating))
r+ geom_point()
#histograms

s<-ggplot(data=movies, aes(x=Budget..million))
s+geom_histogram(binwidth=10)
s+geom_histogram(binwidth=10, aes(fill=Genre), color="Black")

#Statistical transformation
u<-ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
u +geom_point()+geom_smooth(fill = NA)
u<-ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
u+geom_boxplot()
u+geom_boxplot(size = 1.2)
u+geom_boxplot(size = 1.2) + geom_point()
u+geom_boxplot(size = 1.2) + geom_jitter()
# theme
o<-ggplot(data=movies, aes(x=BudgetMillions))
h<-o+ plot_histogram(binwidth=10, aes(fill=Genre), color="black" )
h
h+xlab("MoneyAxis")+ylabel("no of movies")+theme(axis.title.x=element_text(color="Dark green",size=30),
                                                 axis.title.y=element_text(color="red",size=30),
                                                 legend.title=element_text(size=30),
                                                 legend.text=element_text(size=30),
                                                 legend.position = c(1,1),
                                                 legend.justification = c(1,1),
                                                 photo.titleelement_text(color="Darkblue",
                                                                         size=40,
                                                                         family="Courier"))
              
                                                 



