#####  Shailendra Nath Yadav  ####

####  //// TASK 1 ////   ####

###  Prediction Using Supevised ML  ###

#INSTALL csv leader package
install.packages("xlsx")
library(xlsx)

## Used library
library(xlse)
library(corrplot)
library(lmtest)

#    Import Data

stud.data <- read.csv("https://raw.githubusercontent.com/AdiPersonalWorks/Random/master/student_scores%20-%20student_scores.csv")
stud.data

#    To check structure of our Students data set
str(stud.data)
summary(stud.data)

#    Create linear regression mode lm() function
lrmode1 <- lm(formula =  Scores ~ Hours, data = stud.data)
lrmode1
summary(lrmode1)
  
#  Check correlation
corr=cor(stud.data)
corr

#   if the student for 9.25 hours
test_data <- data.frame(Hours <- c(9.25))
test_data

#    Test of modle
pred <- predict(lrmode1, newdata = test_data, interval = "confidence" )
pred

#   Creating Simple linear regression modal where y axis=Score and x axis= Hours

plot(stud.data, main='Scores Vs Hours',col='green')
abline(lrmode1, lwd=3,col='red')

#   if students studies for 9.25 hours/day
y=2.4837 +9.7758*9.25
y
#    Predicted score of the student is 92.90985
