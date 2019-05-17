# Up and Running with R
# Ex05_01
# Creating charts for group distributions

# Load data file about Google searches by state
google <- read.csv("/Users/khemnarayanpoudel/Documents/Fall2017/Rprogrammming/Ex_Files_UaR_R/Exercise Files/Ch05/05_01/google_correlate.csv", header = T)
names(google)
str(google)

# Does interest in data visualization vary by region?
# Split data by region, create new data frame
viz.reg.dist <- split(google$data_viz, google$region)

# Draw boxplots by region
boxplot(viz.reg.dist, col = "lavender")

# To draw barplot with means
viz.reg.mean <- sapply(viz.reg.dist, mean)
# Run next two together (or sequentially)
barplot(viz.reg.mean,
        col = "beige",
        main = "Average Google Search Share of\n\"Data Visualization\" by Region of US")
abline(h = 0)

# Install and load "psych" package to print means, etc.
install.packages("psych")
library("psych")
describeBy(google$data_viz, google$region)