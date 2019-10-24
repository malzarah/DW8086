install.packages("readxl")
library("readxl")

##Import csv file, skip the first 2 rows, and use the 3rd row as header
my_data<-read_excel("C:/Users/hatha/Desktop/DataExploration/MasterWaterQualityEntryTempAdded.xlsx",sheet="Sheet1", skip = 2,col_types =NULL ,col_names = TRUE)

##Remove the first row since it is a unit row
dataset <- my_data [-c (1),]

##Filter 2013-2017 data
newdata1<- subset(dataset,dataset$Year>2012 & dataset$Year<2018)

##Combine Day, Month, & Year columns into Date column
newdata1$Date <- as.Date(with(newdata1, paste(Year, Month, Day,sep="-")), "%Y-%m-%d")

##Remove unnecessary columns 
newdata2<-newdata1[,c(4,5,6,8,10,11,12,13,17,24,25,46,47,50,53)]

##Rename header names
names (newdata2)[2]<- "ObservationSite"
names (newdata2)[3]<- "TempF"
names (newdata2)[4]<- "Precipitation"
names (newdata2)[5]<- "WaterTemp"
names (newdata2)[8]<- "DissolvedOxygen"
names (newdata2)[10]<- "FloatAverage"
names (newdata2)[13]<- "Phosphates"
names (newdata2)[14]<- "Sulfate"
names (newdata2)[15]<- "Alkalinity"


##Use after put in the means and calculations to fill empty cells and change nv cells to NA
Newdata2[newdata2=="nv"]<-NA
Newdata2[newdata2==""]<-NA

##View function to view value of the table
STR(newdata1)

##Write Function
write.csv(newdata1,"reviseddata.csv")


## Capitalized first letter in observation site

> capFirst<- function(s){
  + paste(toupper(substring(s, 1, 1)), substring(s, 2), sep = "")
  + }
> newdata2$ObservationSite<-capFirst(newdata2$ObservationSite)
> newdata2


## Replaced NA with the mean value of Water temp

> data1<-newdata2
> data1$WaterTemp= as.numeric(as.character(data1$WaterTemp))
> data1$WaterTemp[which(is.na(data1$WaterTemp))]<-mean(data1$WaterTemp,na.rm= TRUE)

## Description 
/*
First in the R file we read the Excel file, you need to change the path to match up with the directory where the excel file is located.
Change the Path, next we filter for the year 2012 and 2018. Third step unnecessary columns are removed. Fourth step all header names are renamed to remain consistent.
Finally once the data set has all the necessary felds we need some rows which have NV value they are replaced with NA.  Few values are converted to numeric and using the
write.csv command we store the file in CSV format.

For Replication:-
Please downlaod this R file and change the path for the excel sheet and after running the R code we can get the revised dataset which is cleaned and can be used for further analysis.


*/

