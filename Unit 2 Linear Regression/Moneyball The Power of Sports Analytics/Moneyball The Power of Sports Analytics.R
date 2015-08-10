setwd("C:/Users/Sri/Documents/GitHub/RWD/MITx-15.071x-The-Analytics-Edge/Unit 2 Linear Regression/Moneyball The Power of Sports Analytics/")
#########VIDEO 2: MAKING IT TO THE PLAYOFFS##########
baseball <- read.csv("baseball.csv")
str(baseball)
moneyball <- subset(baseball, Year < 2002)
str(moneyball)
moneyball$RD <- moneyball$RS - moneyball$RA
str(moneyball)
plot(moneyball$RD, moneyball$W)
winsReg <- lm(W ~ RD, data = moneyball)
summary(winsReg)
