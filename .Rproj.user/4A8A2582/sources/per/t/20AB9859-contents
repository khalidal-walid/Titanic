install.packages("dplyr")
library(ggplot2)
library(plyr)
library(dplyr)

#check data
View(titanic)
str(titanic)

#find missing value
sum(is.na(titanic))

#change from numerical to categorical (Survived)
titanic$Survived <- as.factor(titanic$Survived)

#change value 0 = Deceased and 1 = Alive in Survived column
titanic$Survived <- revalue(titanic$Survived, c("0"="Deceased"))
titanic$Survived <- revalue(titanic$Survived, c("1"="Alive"))

#create bar graph to show the number of person that survive or not
a <- ggplot(data = titanic, aes(x = Survived, fill = Survived))
plot(s + geom_bar(stat = "count")) + xlab("Passenger Status") + ylab("Frequency")

#create bar graph to show the number of survivor by categorize it based on passenger class
b <- ggplot(data = titanic, aes(x = Pclass, fill = Survived))
plot(b + geom_bar(stat = "count")) + xlab("Passenger Class") + ylab("Frequency")

#create bar graph to show the number of survivor by categorize it based on age
titanic$Age_grp <- cut(titanic$Age, breaks = c(0,1,12,17,65,Inf), labels = c("Infant", "Children", "Teen", "Adult", "Elderly"))
c <- ggplot(data = titanic, aes(x = Age_grp, fill = Survived))
plot(c + geom_bar(stat = "count")) 

