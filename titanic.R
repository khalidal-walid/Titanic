library(ggplot2)
library(plyr)

View(titanic)

#find missing value
sum(is.na(titanic))

#change numerical to categorical (Survived)
titanic$Survived <- as.factor(titanic$Survived)

#change 0=Deceased and 1=Alive in Survived
titanic$Survived <- revalue(titanic$Survived, c("0"="Deceased"))
titanic$Survived <- revalue(titanic$Survived, c("1"="Alive"))

#create bar graph to show the number of person that survive or not
a <- ggplot(data = titanic, aes(x = Survived, fill = Survived))
plot(s + geom_bar(stat = "count")) + xlab("Passenger Status") + ylab("Frequency")

#create bar graph to show the number of person that survive or not by categorize based on passenger class
b <- ggplot(data = titanic, aes(x = Pclass, fill = Survived))
plot(b + geom_bar(stat = "count")) + xlab("Passenger Class") + ylab("Frequency")
