

#pH Column Missing Values

#For the year 2015,observation for pH value was missing in one data cell.Finding missing value by taking out mean of all the pH values that were recorded in the year 2015
df<-data.frame(x=c(8.80,8.60,7.55,8.30,8.20,8.40,8.50,8.50,8.60,7.80,8.30,7.90,8.10,7.90,7.60,8.00,NA,7.80,8.00,8.10,8.00,7.80,8.00,8.65,8.43,8.90,8.85,8.80,8.10,NA,8.55,8.10,8.00,8.00,8.00,7.90,8.15,8.10,NA,8.00,7.00,8.90,7.90,7.80,7.90,8.30,8.10,8.10,8.00,7.90,7.40,7.16,8.10,8.00,8.55,8.50,8.85,8.40,NA,8.30,8.65,8.30,8.20))
mean(df$x,na.rm = TRUE) 

                  
#Dissolved Oxygen mg/L Column Missing Values

#For the year 2016,observation for Dissolved Oxygen mg/ was missing in one data cell.Finding missing value by taking out mean of all the Dissolved Oxygen mg/L values that were recorded in the year 2016
df2<-data.frame(x=c(5.97,6.04,6.05,6.57,4.49,5.7,5.8,5.8,6.7,3.08,5.07,8.26,8.24,5.65,5.67,9.76,10.84,3.7,8.86,4.32,4.73,3.95,6.04,10.8,NA,7.93,4.89,8.72,7.8,4.79,5.64,7.34,5.575,6.49,11,8.45,9.44,6.61,8.43,7.9,6.2,4.82,8.47,2.54,7.14,7.78,7.76,6.07,10,8.43,10,7,7,9.65,10.1,10.44,8,7,6,6,10,11,7.29,4.55,5,9.4,10.76,9,14.2,6,NA,7.6,16.1,10,9,11.54,11.08,NA,12,NA,NA,8.39,7.8,8,NA,17,10,10,9,8,10,NA,7,7,9,NA,7,13,10,NA,9,8,10,5,7,NA,NA))
mean(df1$x,na.rm = TRUE)                   
                   

#Conductivity Column Missing Values

#For the year 2016,observation for Conductivity was missing in one data cell.Finding missing value by taking out mean of all the Conductivity values that were recorded in the year 2016
df3<-data.frame(x=c(230,210,110,110,110,110,140,140,120,130,120,100,100,115,140,470,140,140,310,150,140,140,140,140,140,150,130,310,100,130,140,490,535,530,NA,440,390,NA,480,590,NA,680,650,160,620,510,100,670,460,600,550,540,540,630,630,540,780,609,530,530,537,580,580,680,540,600,580,620,690,680,640,650,650,620,700,650,650,NA,530,515,610,600,300,650,NA,653,666,5.2,590,330,423,NA,450,610,560,530,620,610,640,NA,66,670,510,600,440,NA,NA)) 
mean(df3$x,na.rm = TRUE)                    
View(df3)                  
                   




















            
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                  
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                   
                 