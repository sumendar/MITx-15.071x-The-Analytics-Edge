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

