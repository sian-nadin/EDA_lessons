reddit <- read.csv('reddit.csv')

#factor variables can have several different levels. e.g. the employment 
#variable can be employed full time, Freelance, Retired etc.
table(reddit$employment.status)
summary(reddit)

levels(reddit$age.range)

#Order the age ranges so that under 18 appears first in the graph
reddit$age.range <- ordered(reddit$age.range ,levels=c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", "65 or Above"))
# Alternatively could have done:
#reddit$age.range <- factor(reddit$age.range ,
# levels=c("Under 18", "18-24", "25-34", "35-44", "45-54", "55-64", 
# "65 or Above"), ordered=T)



#install.packages('ggplot2', dependencies = T)
#library(ggplot2)
qplot(data = reddit, x=age.range)
