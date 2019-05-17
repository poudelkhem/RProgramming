# Up and Running with R
# Ex03_02
# Creating histograms for quantitative variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking site
# and an estimate of how many times they log in
# per week.

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch03/03_01/social_network.csv", header = T)

# Make a histogram of Age using the defaults
hist(sn$Age)

# Add title, colors, etc.
hist(sn$Age,
     #border = NA,
     col = "beige", # Or use: col = colors() [18]
     main = "Ages of Respondents\nSocial Networking Survey of 202 Users",
     xlab = "Age of Respondents")
     
# By the way, a chart of R's color palette can be found at
# http://research.stowers-institute.org/efg/R/Color/Chart/
# including a downloadable PDF version. This chart uses
# numbers for colors instead of names. To get the names, use
colors() [18]  # Which will output [1] "beige"
colors()[c(552, 254, 26)]  # Gives [1] "red" "green" "blue" 