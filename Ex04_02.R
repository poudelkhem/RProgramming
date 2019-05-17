# Up and Running with R
# Ex04_02
# Computing new variables

# Create variable n1 with 1 million random normal values
n1 <- rnorm(1000000)
hist(n1)

# Create variable n2 with 1 million random normal values
n2 <- rnorm(1000000)
hist(n2)

# Average scores across two variables
n.add <- n1 + n2
hist(n.add)

# Multiple scores across two variables
n.mult <- n1 * n2
hist(n.mult)

# Install and load "psych" package to get kurtosis
install.packages("psych")
library("psych")

# Calculate kurtosis for each distribution
kurtosi(n1)
kurtosi(n2)
kurtosi(n.add)
kurtosi(n.mult)
