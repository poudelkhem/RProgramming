# Up and Running with R
# Ex04_01
# Recoding variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking site
# and an estimate of how many times they log in
# per week.

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch04/04_01/social_network.csv", header = T)

# Install and load "psych" package for descriptives
install.packages("psych")
library("psych")

# Original variable Times
hist(sn$Times)
describe(sn$Times)

# z-scores
# Use built-in function "scale"
times.z <- scale(sn$Times)
hist(times.z)
describe(times.z)

# log
times.ln0 <- log(sn$Times)
hist(times.ln0)
describe(times.ln0)
# Add one to avoid undefined logs for 0 times
times.ln1 <- log(sn$Times + 1)
hist(times.ln1)
describe(times.ln1)

# Ranking
times.rank <- rank(sn$Times)
hist(times.rank)
describe(times.rank)
# ties.method = c("average", "first", "random", "max", "min")
times.rankr <- rank(sn$Times, ties.method = "random")
hist(times.rankr)
describe(times.rankr)

# Dichotomizing
# Use wisely and purposefully!
time.gt1 <- ifelse(sn$Times > 1, 1, 0)
time.gt1