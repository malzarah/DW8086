setwd("C:/Users/hatha/Desktop/ISQA8086/RScripts")
library(readxl)
library(dplyr)

##Bring in dataset
dataset <- read.csv("VH-Dataset.csv")


str(dataset)

##Checking for suspicious data
range(dataset$TempF)
range(dataset$Precipitation)
range(dataset$WaterTemp)
range(dataset$pH, na.rm = TRUE)
range(dataset$Conductivity)
range(dataset$Turbidity, na.rm = TRUE)

##Remove unnecessary columns
beforesplit <-dataset[,-c(1)]

##Create subset for data from West site
west <- subset(beforesplit,beforesplit$ObservationSite == "West")

##Create subset for data from North site
north <-subset(beforesplit,beforesplit$ObservationSite == "North")


##Quick summary
summary(beforesplit)
summary(west)
summary(north)


##Linear regression to find out the connection between Turbidity and Conductivity
attach(dataset)
plot(Turbidity ~ Conductivity)
reg <- lm(Turbidity ~ Conductivity)
abline(reg)
summary(reg)
##Results show that there is no linear relationship


##Linear regression to find out the connection between Turbidity and Conductivity (for west site)
attach(west)
plot(Turbidity ~ Conductivity)
regwest <- lm(Turbidity ~ Conductivity)
abline(regwest)
summary(regwest)
##Results show that there is no linear relationship


##Linear regression to find out the connection between Turbidity and Conductivity (for north site)
attach(east)
plot(Turbidity ~ Conductivity)
regeast <- lm(Turbidity ~ Conductivity)
abline(regeast)
summary(regeast)
##Results show that there is no linear relationship


##Linear regression to find out the connection between TempF and pH
attach(dataset)
plot(TempF ~ pH)
tempph <- lm(TempF ~ pH)
abline(tempph)
summary(tempph)
##Results show that there is no linear relationship





