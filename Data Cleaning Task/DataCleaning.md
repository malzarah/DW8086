# Data Cleaning Documentation

## Data Set Description

The Homestead National Monument of America (HOME), which is a unit of the National Park System, commemorates passage of the Homestead Act of 1862. Through this act, any qualified person can claim up to 160 acres of federally owned land in exchange for five years of residence and a promise to cultivate and take proper care of the land.

HOME's another initiative is to invite students or any other group of people wanting to participate, monitoring water quality in the park. We received data set from our client Jesse Bolli, Resource Management Specialist at HOME, where observations were recorded regarding water quality in the park.

The data set consist of 1061 rows and 53 columns. Data set includes data regarding water quality such as Precipitation Current Day, Water Temperature, pH level of the water, Conductivity, Turbidity, Nitrates, Total Phosphate, Alkalinity Average etc. The data set has observations that were recorded from the year 2002 till 2016.

## Policy Constraints 

## Metadata Description
The Dataset that we our using for our project analysis, all the observations were recorded while monitoring the water quality against vaious contents found in water during the event. Dataset includes varibales such as Precipitation Current Day, Water Temperature, pH level of the water, Conductivity, Turbidity, Nitrates, Total Phosphate, Alkalinity Average etc. The data set has observations that were recorded from the year 2002 till 2017.
As a part of data cleaning process, we selected observations that were recorded from the year 2013 till 2017.To monitor the quality of wate, follwoign factors were measured:
temperarture of the water, pH level, conductivity, level of dissolved Oxygen found in water, content of Nitrates, phosphates, average of akalinity, volume of sand, slit,gravel etc, found in water. Each observation was made at a particular site on a specific date of the month and year.
The observations included in the dataset provides us with enough information to speculate the qaulity of water over the period of five years that is from 2013 till 2017 inclusively.

## Issues with the Data Set

Following are the issues that were observed in the data set provided by the stakeholder:
* There are three separate columns for a date (Day, Month, Year).
* Unnecessary rows and columns are there.
* Rows with missing values or no values.
* Same name has written in different patterns in the column ObservationSite.
* Columns that were supposed to hold numeric values just like other rows in the column but holds value such as NV instead of   NULL or be an empty cell.
* Number of Decimal places of decimal values is not uniformed along the dataset.

## Description of steps undertaken by the team to resolve the issues with Data set

As per our data research questions, we have filtered our dataset from the year 2013 to the year 2017. We could see how the water quality between the two sites changes in these 5 years. We have removed some unnecessary columns and rows to ensure the rationality about the data cleaning. We have combined the day, month , and year column into a single column named Date. We have simplified the column name to make it easier to use. Additionally, we have filled the mean value for temperature in the missing location as the temperature will not vary too much for a given season. Instead of using different names ( like NV,  -,  blank) for missing value/data, we have filled the data with NA for columns Turbidity, FloatAverage, Velocity, Nitrates, phosphates, Sulphate, Alkalinity. In the column ObservationSite, same name has written in different patterns so we changed it into single pattern (north -> North, west -> West). Also, we have converted all decimal values to two decimal points so that it will be easier to read and use the data.

## R script File

[R Script File](https://github.com/datawizard8086/DW8086/blob/master/Data%20Cleaning%20Task/Team%203%20R%20File.R)

### Contributionship statement
Malik, Nishi, Vincent and Vishekha have contributed to the Data Cleaning and Documentation task.

### ProofReader statement
Nishi Mahato is the proofreader of this document.
