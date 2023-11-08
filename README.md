# Human Activity Recognition dataset
Processed as part of the Getting and Cleaning Data Course project.

Processing script requires `dplyr`

Script usage to recreate dataset:
```R
source(run_analysis.R)
setup() # Downloads and unzips the data
data <- getTables() # Loads the required data
clean <- processTables(data) # Creates tidy dataset containing averages for subjects+activities
```