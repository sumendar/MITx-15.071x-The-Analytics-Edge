setwd("C:/Users/Sri/Documents/GitHub/RWD/MITx-15.071x-The-Analytics-Edge/Unit-1--An-Introduction-to-Analytics/Working-with-Data-An-Introduction-to-R")

# VIDEO 2

########## Basic Calculations########
8*6
2^16
2^
8*6
8*10
# 
######## Functions############
sqrt(2)
abs(-65)
?sqrt

########## Variables ##########
SquareRoot2 = sqrt(2)
SquareRoot2
HoursYear <- 365*24
HoursYear
#### rm(list = ls())  ########### used to delete all objects
ls()
######## rm(SquareRoot2) #########  to delete only specific object
ls()
# 
# 
# # VIDEO 3 
# 
##### # Vectors ##########
c(2,3,5,8,13)
Country = c("Brazil", "China", "India","Switzerland","USA")
LifeExpectancy = c(74,76,65,83,79)
Country
LifeExpectancy
Country[1]
LifeExpectancy[3]
Sequence = seq(0,100,2) #another function to create a vector
Sequence
# 
# ######## Data Frames ########
CountryData = data.frame(Country, LifeExpectancy)
CountryData
CountryData$Population = c(199000,1390000,1240000,7997,318000)
CountryData
Country = c("Australia","Greece")
LifeExpectancy = c(82,81)
Population = c(23050,11125)
NewCountryData = data.frame(Country, LifeExpectancy, Population)
NewCountryData
AllCountryData = rbind(CountryData, NewCountryData)
AllCountryData
# 
# 
# # VIDEO 4
# 
# ########### Loading csv files #########
WHO <- read.csv("WHO.csv")
str(WHO)
summary(WHO)
WHO_Europe <- subset(WHO,Region=="Europe") #subset of a dataframe
str(WHO_Europe)
write.csv(WHO_Europe,"WHO_Europe.csv") #write any file to the location
ls()
# 
# # #####Removing variables########
#rm(WHO_Europe)
ls()
# 
# 
# # VIDEO 5
# 
# # ######Basic data analysis ########
# 
mean(WHO$Under15)
sd(WHO$Under15)
summary(WHO$Under15)
which.min(WHO$Under15)
WHO$Country[86]
which.max(WHO$Under15)
WHO$Country[124]
# 
########### Scatterplot########
plot(WHO$GNI, WHO$FertilityRate)
# ##### Subsetting#####
Outliers <-  subset(WHO, GNI > 10000 & FertilityRate>2.5) 
nrow(Outliers)#how many rows in the above subset
Outliers[c("Country","GNI","FertilityRate")]
# 
# 
# # VIDEO 6
# 
# # #######Histograms########
hist(WHO$CellularSubscribers) #histogram is usefull to understand the distribution of a variable
# 
# ###### Boxplot v########
boxplot(WHO$LifeExpectancy ~ WHO$Region)  # Boxplot is used to understand the statistical range of a variable
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab ="Countries", ylab= "LifeExpectancy", main ="Life expectency of Countries by Region")# 
table(WHO$Region)

# 
# ####### Summary Tables ###########

# 
