# Up and Running with R
# Ex03_01
# Creating bar charts for categorical variables

# Use dataset "social_network.csv" which records the
# gender and age of 202 online survey respondents
# along with their preferred social networking site
# and an estimate of how many times they log in
# per week.

# Create data frame "sn" from CSV file w/headers
sn <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch03/03_01/social_network.csv", header = T)

# R doesn't create bar charts directly from the categorical
# variables; instead, we must first create a table that
# has the frequencies for each level of the variable.
# The "table" function is able to create this table from
# the variable, which we specify as sn$Site. That is, we
# first give the name of the data frame, then $, then the 
# name of the variable. (Following Google's style guide,
# it is better to state explictly the data frame than to
# use the shortcut function "attach," which can lead to
# confusion.)

site.freq <- table(sn$Site)  # Creates table from Site

barplot(site.freq)  # Creates barplot in new window
#? barplot  # For more information on customizing graph

# To put the bars in descending order, add "order":
barplot(site.freq[order(site.freq, decreasing = T)])

# Draw the bars horizontally (but turn off decreasing)
barplot(site.freq[order(site.freq)], horiz = T)

# Make Facebook blue and all others gray by specifying a
# vector with named colors for gray and RGB for Facebook blue
# fbba = "Facebook blue/ascending" for horizontal bars
# And now breaking code across lines for clarity
fbba <- c(rep("gray", 5),
          rgb(59, 89, 152, maxColorValue = 255))
          
barplot(site.freq[order(site.freq)], 
        horiz = T, 
        col = fbba)

# Turn off borders with "border = NA"
# Add title with "main" with "\n" to break line
# Add subtitle with "sub"
barplot(site.freq[order(site.freq)],
        horiz = T,         # Horizontal
        col = fbba,        # Use colors "fbba"
        border = NA,       # No borders
        xlim = c(0, 100),  # Scale from 0-100
        main = "Preferred Social Networking Site\nA Survey of 202 Users",
        xlab = "Number of Users")
        
# Immense amount of control available through
# "par {graphics}"

# RStudio gives option of saving as image file in
# several formats and it's easier to change sizes