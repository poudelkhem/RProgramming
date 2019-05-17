# Up and Running with R
# Ex03_05
# Calculating descriptives

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking site
# and an estimate of how many times they log in
# per week.

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch03/03_01/social_network.csv", header = T)
summary(sn$Age)  # Summary for one variable
summary(sn)      # Summary for entire table (inc. categories)

# Tukey's five-number summary: minimum, lower-hinge
#     (i.e., first quartile), median, upper-hinge
#     (i.e., third quartile), maximum
# Doesn't print labels
fivenum(sn$Age)

# Alternate descriptive statistics
# Gives n, mean, standard deviation, median, trimmed mean
#   (10% by default),median absolute deviation from median
#   (MAD), min, max, range, skew, kurtosis, and
#   standard error.
# Options for listwise deletion of missing data, methods of 
#   calculating median/skew/kurtosis, amount of trimming, etc.
# Note: Converts categories to sequential numbers and does
#   stats; can be useful in certain situations; marks with *
install.packages("psych")
library("psych")
describe(sn)