# Up and Running with R
# Ex05_02
# Creating scatterplots

# Load data file about Google searches by state
google <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch05/05_02/google_correlate.csv", header = T)
names(google)
str(google)

# Is there an association between the percentage of people
# in a state with college degrees and interest in
# data visualization?
plot(google$degree, google$data_viz)
# Add title, labels, change circles to points
plot(google$degree, google$data_viz,
     main = "Interest in Data Visualization Searches\nby Percent of Population with College Degrees",
     xlab = "Population with College Degrees",
     ylab = "Searches for \"Data Visualization\"",
     pch = 20,
     col = "grey")
# Add fit lines
# Linear regression line (y ~ x) 
abline(lm(google$data_viz ~ google$degree), col="red")
# Lowess smoother line (x, y)
lines(lowess(google$degree, google$data_viz), col="blue")
