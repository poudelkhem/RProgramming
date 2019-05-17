# Up and Running with R
# Ex06_03
# Creating crosstabs for categorical variables

# Load data file about social networks
# Deleted one case with missing data on Gender
sn <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch06/06_03/social_network.csv", header = T)
names(sn)

# Create contingency table
sn.tab <- table(sn$Gender, sn$Site)
sn.tab

# If desired, can get marginal frequencies
margin.table(sn.tab, 1) # Row marginal frequencies
margin.table(sn.tab, 2) # Column marginal frequencies

# Call also get cell, row, and column %
# With rounding to get just 2 decimal places
round(prop.table(sn.tab), 2)    # cell %
round(prop.table(sn.tab, 1), 2) # row %
round(prop.table(sn.tab, 2), 2) # column %

# Chi-squared test
chisq.test(sn.tab)