# Up and Running with R
# Ex02_04

x <- 0:10  # Assigns number 0 through 10 to x
x  # Prints contents of x in console

y <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)  # Assigns values to y
y  # Prints y to console

ls()  # List objects

# CSV FILES
# R converts missing to "NA"
# Don't have to specify delimiters for missing data
# because CSV means "comma separated values"
# "header = T" means the first line is a header
# This first one will not work because of the backslashes
sn.csv <- read.csv("C:\Users\Barton Poulson\Desktop\social_network.csv", header = T)
# Need to either double up the backslashes...
sn.csv <- read.csv("C:\\Users\\Barton Poulson\\Desktop\\social_network.csv", header = T)
# Or replace with forward slashes
sn.csv <- read.csv("C:/Users/Barton Poulson/Desktop/social_network.csv", header = T)
str(sn.csv)

# SPSS FILES
# Saved as .csv in SPSS
sn.spss.csv <- read.csv("C:\\Users\\Barton Poulson\\Desktop\\social_network_spss.csv", header = T)
str(sn.spss.csv)

# Using package "foreign"
# Gets warnings but no errors
install.packages("foreign")
library(foreign)
sn.spss.f <- read.spss("C:\\Users\\Barton Poulson\\Desktop\\social_network.sav", to.data.frame=T, use.value.labels=T)
str(sn.spss.f)