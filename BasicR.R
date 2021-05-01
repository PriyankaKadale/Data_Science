#Storing numerical and string values in 1D Data dataset and assigning it to var
var<- c (1,2,3,"John","@")
#repeat no 1 five times
rep(1,5) 

#To display numbers from 2-6 are displayed
seq(2,6)

#if we want Nos in a certain interval in this case its 3
seq(2,6,by=3)

# Storing data set in x and y
x<-c(1,2,3,4,5) #Assigning values to x
y<-c(5,6,7,8,9) #Assigning values to y

#Arithmetic Operation
x+y          #Addition 
sqrt(x)      #Square root of x
x*y          #Multiplication
y%%x         #Divide
sqrt(y)      #Square root of y
exp(x)       #Exponential


#To access a value from X& Y x[index no]
y[3]    #3rd index in y
x[4]    #4th index in x
y[-5]       #to exclude 5th index value from y
y[-2]       #to exclude 2nd index value from y
y<9        # if values in the dataset y are less than 9 then TRUE else FALSE

y[y<9]-2    #Subtract 2 from Values below 9 
#All values below are replaced by 2
y[y<9]=2 
y

a<-7
b<-2
a%%b        #a divided by b
a%%2        #a divided by 2

#Slicing of Dataframe  

ab<-data.frame(Name=c("John","Mark","Rob","Steve","Micheal"),Height=c(100,200,432,443,123),Weight=c(121,345,230,345,544))
ab

ab$Name   #To extract all values of Col1
ab$Height #To extract all values of Col2
ab$Weight #To extract all values of Col3

ab[2,3]           #To access a certain point value ab[row,column]
ab[1,3]
ab[2]             #To display 2nd Col
ab[,'Weight']     #To display 2nd Col values

ab[1:3,'Name']       #To display row 1 to 3 and col1
ab[c(1,2,3),1]       #To display row 1 to 3 and col1
ab[c(1,2,3),'Name']  #To display row 1 to 3 and col1

ab[4,c(1,3)]      #To access a row ab[row_no,c(col_no)]
ab[4,1:3]         #To access R4 and column from 1 to 3

ab[c(2,3),c(2,3)] #To access R2 R3 & C2 C3
ab[c(2,4), ]      #To access R2 R4 and all columns

#--------------------------------------------------------------------------------------
df<-data.frame(x=1:3,y=c('a','b','c'))
df

df[1,]              #To extract 1st row
df[1,c(1,2)]        #To extract 1st row by using column number
df[1,c('x','y')]    #To extract 1st row specify all the column names and express them as Atomic vectors [c('x','y')]

df[,1]              #To extract only C1
df[,2]              #To extract only C2

df[1,1]             #To extract R1 C1
df[1,'x']           #To extract R1 C1

df[1,2]             #To extract R1 C2
df[1,'y']           #To extract R1 C2

df[c(1,3),2]        #To extract R1 C2 & R3 C2
df[c(1,3),'y']      #To extract R1 C2 & R3 C2

df[c(1,3),1]        #To extract R1 C1 & R3 C1
df[c(1,3),'x']      #To extract R1 C1 & R3 C1

df[c(1,3),]           #To extract R1C1 R1C2 & R3C1 R3C2
df[c(1,3),c(1,2)]     #To extract R1C1 R1C2 & R3C1 R3C2
df[c(1,3),c('x','y')] #To extract R1C1 R1C2 & R3C1 R3C2

df[-1]   #1st column excluded
df[-2]   #2nd column excluded
df[2,-2] #2nd row second column excluded


#Homework Earthquake Data set
library(e1071)

e_quakes<- datasets::quakes
e_quakes

#-----------Calculate Variance of Earthquake------------------ 

var(e_quakes$lat)      #Variance of Col1
var(e_quakes$long)     #Variance of Col2
var(e_quakes$depth)    #Variance of Col3
var(e_quakes$mag)      #Variance of Col4
var(e_quakes$stations) #Variance of Col5

# -----------------------Skewness----------------------

#***Column  Lat is left skewed ,since the skewness of lat is negative and mass is concentrated towards right and skewed towards left
  
latitude <-e_quakes$lat  # Storing the values of lat column in latitude

mean(latitude)       # Calculate mean of column lat

skewness(latitude)       # Print skewness of distribution

# Histogram of distribution
hist(latitude,main = "Latitude of e_Quake is -vely skewed"
     ,xlab = "Latitude", col="#ffa600")

kurtosis(latitude)       # Print Kurtosis of distribution

# Histogram of distribution
hist(latitude,main = "Kurtosis of Latitude"
     ,xlab = "Latitude", col="#ffa600", border=T)

plot(density(latitude))   #Density


#***Column  Long is left skewed ,since the skewness of long is negative and mass is concentrated towards right and skewed towards left

longitude <-e_quakes$long  #Storing the values of long column in longitude

mean(longitude)            #Calculate mean of column long

skewness(longitude)         # Print skewness of distribution

# Histogram of distribution
hist(longitude,main = "Longitude of e_Quake is -vely skewed",
     xlab = "Logitude", col="#ff6361")

kurtosis(longitude)       # Print Kurtosis of distribution

# Histogram of distribution
hist(longitude,main = "Kurtosis of Longitude of e_Quake",
     xlab = "Logitude", col="#ff6361")

plot(density(longitude))

#***Column  Depth is right skewed ,since the skewness of depth is positive and mass is concentrated towards left and skewed towards right

dep <-e_quakes$depth  #Storing the values of depth column in dep

mean(dep)             #Calculate mean of column depth

skewness(dep)        # Print skewness of distribution

# Histogram of distribution
hist(dep, main ='Depth of e_Quake is +vely skewed',
     xlab = 'Depth', col='#bc5090') 

kurtosis(dep)       # Print Kurtosis of distribution

# Histogram of distribution
hist(dep, main ='Kurtosis of Depth of e_Quake',
     xlab = 'Depth', col='#bc5090') 

plot(density(dep))

#***Column  Mag is right skewed ,since the skewness of depth is positive and mass is concentrated towards left and skewed towards right

magnitude <-e_quakes$mag  #Storing the values of mag column in magnitude

mean(magnitude)           #Calculate mean of column depth

skewness(magnitude)        # Print skewness of distribution

# Histogram of distribution
hist(magnitude, main ='Magnitude of e_Quake is +vely skewed',
     xlab = 'Magnitude', col='#58508d')

kurtosis(m)       # Print Kurtosis of distribution

# Histogram of distribution
hist(magnitude, main ='Kurtosis of Magnitude of e_Quake',
     xlab = 'Magnitude', col='#58508d')

plot(density(magnitude))

#***Column  Stations is right skewed ,since the skewness of stations is positive and mass is concentrated towards left and skewed towards right

st <-e_quakes$stations  #Storing the values of stations column in st

mean(st)           #Calculate mean of column depth

skewness(st)        # Print skewness of distribution

# Histogram of distribution
hist(st, main ='Stations of e_Quake is +vely skewed',
     xlab = 'Stations', col='#003f5c', border = F) 

kurtosis(st)       # Print Kurtosis of distribution

# Histogram of distribution
hist(st, main ='Kurtosis of Stations of e_Quake',
     xlab = 'Stations', col='#003f5c', border = F) 

plot(density(st))




