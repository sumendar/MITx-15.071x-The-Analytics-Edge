setwd("C:/Users/Sri/Documents/GitHub/RWD/MITx-15.071x-The-Analytics-Edge/Unit 2 Linear Regression/The Statistical Sommelier An Introduction to Linear Regression/")
########VIDEO 4: LINEAR REGRESSION IN R###########
wine <- read.csv("wine.csv")
str(wine)
summary(wine)
wine_test <- read.csv("wine_test.csv")
summary(wine_test)
model1 = lm(Price ~ AGST, data = wine)
summary(model1)
