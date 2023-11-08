URL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download and unzip data into the ./data folder
setup <- function() {
    dir.create("data", showWarnings = FALSE)
    if (!file.exists("./data/UCI_HAR_Dataset.zip")) {
        download.file(URL, destfile = "./data/UCI_HAR_Dataset.zip")
    }
    unzip("./data/UCI_HAR_Dataset.zip", exdir = "./data")
}
