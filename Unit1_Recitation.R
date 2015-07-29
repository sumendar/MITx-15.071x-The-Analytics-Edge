
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
  
# Get the name of the food with highest sodium levels
USDA$Description[265]
  
# Create a subset of the foods with sodium content above 10,000mg
HighSodium <- subset(USDA,Sodium>10000)
  
# Count the number of rows, or observations
nrow()

# Output names of the foods with high sodium content
  
# Finding the index of CAVIAR in the dataset
  
# Find amount of sodium in caviar
  
# Doing it in one command!
  
# Summary function over Sodium vector
  
# Standard deviation
  
  
  
# Video 4 - Plots

# Scatter Plots
  
# Add xlabel, ylabel and title
  
# Creating a histogram
  
# Add limits to x-axis
  
# Specify breaks of histogram
  
  
# Boxplots
  


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
  
