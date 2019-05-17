# Up and Running with R
# Ex02_06

# Lists of packages
# Opens CRAN Task Views in browser
browseURL("http://cran.r-project.org/web/views/")
# Opens "Available CRAN Packages By Name" (from UCLA mirror)
browseURL("http://cran.stat.ucla.edu/web/packages/available_packages_by_name.html")
library()  # Brings up editor list of available packages
search()  # Shows packages that are currently active

# To install and use packages
# Can use Tools > Install Packages
# Can use Packages window
# Or can use scripts

# Downloads package from CRAN and installs in R
install.packages("psych")
# Make package available; preferred for loading in scripts
library("psych")
# Preferred for loading in functions and packages
require("psych")
# Brings up documentation in editor window
library(help = "psych") 

# Vignettes
# Brings up list of vignettes (examples) in editor window
vignette(package = "psych")  
# Open web page with hyperlinks for vignette PDFs etc.
browseVignettes(package = "psych")  
vignette()  # Brings up list of all vignettes
browseVignettes()  # HTML for all vignettes

# Update packages
# In RStudio, Tools > Check for Package Updates
update.packages()  # Checks for updates; do periodically

# Removing packages
# By default, all installed packages are removed when R quits
# Can also manually uncheck in Packages window
# Or can use this code
detach("package:psych", unload=TRUE)