getwd()
setwd("C:/Users/Sri/Documents/GitHub/RWD/MITx-15.071x-The-Analytics-Edge/Unit-1--An-Introduction-to-Analytics/Assignment-1")
getwd()
ls()  
# rm(list = ls()) #to remove old object in this working directory 
ls()
########LOADING THE DATA  #########
mvt <- read.csv("mvtWeek1.csv")
str(mvt)
max(mvt$ID)
min(mvt$Beat)
numOfArrest <- as.numeric(mvt$Arrest)
numOfArrest
table(numOfArrest)
mvt$LocationDescription
a <- table(mvt$LocationDescription)
a[names(a)=="ALLEY"]
summary(mvt) 
############UNDERSTANDING DATES IN R  ########
summary(mvt)
mvt$Date[2]
#View(mvt)
str(mvt)
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M"))
#rm(DateConvert)
str(mvt)
summary(mvt)
summary(mvt$Date)
mvt$Month = months(DateConvert)
mvt$Weekday = weekdays(DateConvert)
mvt$Date = DateConvert
str(mvt) #now its totally convert to date format compare to earlier str function says it is Factor type
#In which month did the fewest motor vehicle thefts occur?
table(mvt$Month) #you can see that the month with the smallest number of observations is February. 
#On which weekday did the most motor vehicle thefts occur?
table(mvt$Weekday)#you can see that the weekday with the largest number of observations is Friday.
table(mvt$Arrest,mvt$Month)
#########VISUALIZING CRIME TRENDS##########
#visualizing date as in histogram and save it into R working directory disk
png(filename="name.png") # save file as png
hist(mvt$Date, breaks=100)
dev.off()
# save file as jpg
jpeg(filename="name.jpg") # save file as jpg
hist(mvt$Date, breaks=100)
dev.off()
# save file as PDF
pdf(file = "name.pdf") # here filename argument doesn't exist in pdf function
hist(mvt$Date, breaks=100)
dev.off()
#Does it look like there were more crimes for which arrests were made in the first half of the time period or the second half of the time period? 
boxplot(mvt$Date ~ mvt$Arrest)#you look at the boxplot, the one for Arrest=TRUE is definitely skewed towards the bottom of the plot, meaning that there were more crimes for which arrests were made in the first half of the time period.
#For what proportion of motor vehicle thefts in 2001 was an arrest made?
table(mvt$Arrest, mvt$Year)# The fraction of motor vehicle thefts in 2001 for which an arrest was made is thus 2152/(2152+18517) = 0.1041173.
#For what proportion of motor vehicle thefts in 2007 was an arrest made?
table(mvt$Arrest, mvt$Year)#The fraction of motor vehicle thefts in 2007 for which an arrest was made is thus 1212/(1212+13068) = 0.08487395.
#For what proportion of motor vehicle thefts in 2012 was an arrest made?
table(mvt$Arrest, mvt$Year)#The fraction of motor vehicle thefts in 2012 for which an arrest was made is thus 550/(550+13542) = 0.03902924.
#Which locations are the top five locations for motor vehicle thefts, excluding the "Other" category?
sort(table(mvt$LocationDescription)) #the locations with the largest number of motor vehicle thefts are listed last. These are Street, Parking Lot/Garage (Non. Resid.), Alley, Gas Station, and Driveway - Residential.
#How many observations are in Top5?
Top5 = subset(mvt, LocationDescription=="STREET" | LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)" | LocationDescription=="ALLEY" | LocationDescription=="GAS STATION" | LocationDescription=="DRIVEWAY - RESIDENTIAL")
#One of the locations has a much higher arrest rate than the other locations. Which is it? 
table(Top5$LocationDescription, Top5$Arrest)#you can then compute the fraction of motor vehicle thefts that resulted in arrests at each location. Gas Station has by far the highest percentage of arrests, with over 20% of motor vehicle thefts resulting in an arrest.
#On which day of the week do the most motor vehicle thefts at gas stations happen?
table(Top5$LocationDescription, Top5$Weekday)
#On which day of the week do the fewest motor vehicle thefts in residential driveways happen?
table(Top5$LocationDescription, Top5$Weekday)
