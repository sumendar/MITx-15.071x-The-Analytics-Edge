
setwd("C:/Users/Sri/Documents/GitHub/RWD/MITx 15.071x The Analytics Edge/Unit-1--An-Introduction-to-Analytics")

# Video 2 - Reading in the Dataset

# Get the current directory
  getwd()
# Read the csv file
USDA <- read.csv("USDA.csv")

# Structure of the dataset
str(USDA)  
# Statistical summary
summary(USDA)  


# Video 3 - Basic Data Analysis

# Vector notation
USDA$Sodium
  
# Finding the index of the food with highest sodium levels
which.max(USDA$Sodium)
  
# Get names of variables in the dataset
names(USDA)
USDA$Calories
which.max(USDA$Calories)
USDA$Description[289]  
# Get the name of the food with highest sodium levels
USDA$Description[265]
  
# Create a subset of the foods with sodium content above 10,000mg
HighSodium <- subset(USDA,Sodium>10000)
  
# Count the number of rows, or observations
nrow(HighSodium)

# Output names of the foods with high sodium content
HighSodium$Description
  
# Finding the index of CAVIAR in the dataset
match("CAVIAR",USDA$Description)
  
# Find amount of sodium in caviar
USDA$Sodium [4154]
  
# Doing it in one command!
USDA$Sodium[match("CAVIAR",USDA$Description)]
  
# Summary function over Sodium vector
summary(USDA$Sodium)
  
# Standard deviation
sd(USDA$Sodium)  
sd(USDA$Sodium,na.rm = TRUE)
View(USDA)  
  
  # Video 4 - Plots

# Scatter Plots
plot(USDA$Protein,USDA$TotalFat)
  
# Add xlabel, ylabel and title
plot(USDA$Protein,USDA$TotalFat,xlab = "Protein", ylab = "Fat", main = "Protein Vs Fat",col="Red")
# Creating a histogram
hist(USDA$VitaminC,xlab = "Vitamin c (mg)",main = "Histogram of Vitamin C Levels")
# Add limits to x-axis
hist(USDA$VitaminC,xlab = "Vitamin c (mg)",main = "Histogram of Vitamin C Levels",xlim = c(0,100))  
# Specify breaks of histogram
hist(USDA$VitaminC,xlab = "Vitamin c (mg)",main = "Histogram of Vitamin C Levels",xlim = c(0,100),breaks = 100)  
hist(USDA$VitaminC,xlab = "Vitamin c (mg)",main = "Histogram of Vitamin C Levels",xlim = c(0,100),breaks = 2000)    
# Boxplots
boxplot(USDA$Sugar,main="Box plot of sugar levels")  
boxplot(USDA$Sugar,main="Box plot of sugar levels",ylab="sugar (g)")  

# Video 5 - Adding a variable

# Creating a variable that takes value 1 if the food has higher sodium than average, 0 otherwise
  
# Adding the variable to the dataset
  
# Similarly for HighProtein, HigCarbs, HighFat
  


# Video 6 - Summary Tables

# How many foods have higher sodium level than average?
  
# How many foods have both high sodium and high fat?
  
# Average amount of iron sorted by high and low protein?
  
# Maximum level of Vitamin C in hfoods with high and low carbs?
  
# Using summary function with tapply
  
