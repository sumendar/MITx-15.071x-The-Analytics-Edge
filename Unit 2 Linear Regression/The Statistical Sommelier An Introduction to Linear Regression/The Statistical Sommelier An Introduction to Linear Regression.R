setwd("C:/Users/Sri/Documents/GitHub/RWD/MITx-15.071x-The-Analytics-Edge/Unit 2 Linear Regression/The Statistical Sommelier An Introduction to Linear Regression/")
########VIDEO 4: LINEAR REGRESSION IN R###########
wine <- read.csv("wine.csv")
str(wine)
summary(wine)
wine_test <- read.csv("wine_test.csv")
summary(wine_test)
#to predict price create one variable linear regression equation using AGST
#price ---dependent var
#AGST----independent var
model1 = lm(Price ~ AGST, data = wine)
summary(model1)
model1$residuals
SSE <- sum(model1$residuals^2)
SSE
model2 <- lm(Price ~ AGST +HarvestRain, data = wine)
summary(model2)
SSE <- sum(model2$residuals^2)
SSE
model3 <- lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop, data = wine)
summary(model3)
SSE <- sum(model3$residuals^2)
SSE
######QUICK QUESTION 4 #############
modelQQ4 <- lm(Price ~ HarvestRain + WinterRain, data = wine)
summary(modelQQ4)
##############VIDEO 5: UNDERSTANDING THE MODEL###############
model4 <- lm(Price ~ AGST + HarvestRain + WinterRain  + Age, data = wine )
summary(model4)
#######QUICK QUESTION  5 ############
modelQQ5 <- lm(Price ~ HarvestRain + WinterRain, data = wine)
summary(modelQQ5)
########VIDEO 6: CORRELATION AND MULTICOLLINEARITY############
# CORRELATION : A measure of the linear relationship between variables
cor(wine$WinterRain,wine$Price) # correlation between winterrain and price
cor(wine$Age,wine$FrancePop)
cor(wine) # where we can get all correlation between all two variables by looking cross  check(Row X Column)
# age and francepop is highly correlated, multicollinearity refers to when two independent var highly correlated
# but if we have high correlation b/w dependent and independent variable is good thing, bcZ we will predict depedent using independent 
# you want to remove insignificant var at a time
model5 <- lm(Price ~ AGST+HarvestRain+WinterRain,data = wine) 
# we can write as below also for lm function 
#difference here is in above lm function we mentioned data set name as one argument
#so no need to specify $ notation, but where as in below function we need to 
#specify $ notation bcz we are ignoring data set name argument in the function
model5 <- lm(wine$Price ~ wine$AGST+wine$HarvestRain+wine$WinterRain)
summary(model5)
#AGST and HarvestRain is significant, WinterRain is almost significant
# R squared 0.75
#######QUICK QUESTION  6##########
#Using the data set wine.csv, what is the correlation between HarvestRain and WinterRain?
cor(wine$HarvestRain,wine$WinterRain)
cor(wine$WinterRain,wine$HarvestRain)
############VIDEO 7: MAKING PREDICTIONS#################
