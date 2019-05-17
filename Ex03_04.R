# Up and Running with R
# Ex03_04
# Calculating frequencies

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking site
# and an estimate of how many times they log in
# per week.

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch03/03_01/social_network.csv", header = T)

table(sn$Site)  # Creates frequency table in alphabetical order
site.freq <- table(sn$Site)  # Saves table
site.freq  # Print table

site.freq <- site.freq[order(site.freq, decreasing = T)] # Sorts by frequency, saves table
site.freq  # Print table

prop.table(site.freq)  # Give proportions of total
round(prop.table(site.freq), 2)  # Give proportions w/2 decimal places