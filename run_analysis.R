URL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Download and unzip data into the ./data folder
setup <- function() {
    dir.create("data", showWarnings = FALSE)
    if (!file.exists("./data/UCI_HAR_Dataset.zip")) {
        download.file(URL, destfile = "./data/UCI_HAR_Dataset.zip")
    }
    unzip("./data/UCI_HAR_Dataset.zip", exdir = "./data")
}

# Read in the required data and process it into correct format
getTable <- function(train_or_test) {
    actLabels <- read.table("data/UCI HAR Dataset/activity_labels.txt")
    features <- read.table("data/UCI HAR Dataset/features.txt")[,2]
    idxs <- grep("(mean|std)\\(\\)", features)
    names <- grep("(mean|std)\\(\\)", features, value = TRUE)
    names <- gsub("mean", "Mean", names)
    names <- gsub("std", "Std", names)
    names <- gsub("[-\\(\\)]", "", names)

    subjectTrain <- read.table(gsub("train", train_or_test, "data/UCI HAR Dataset/train/subject_train.txt"))
    colnames(subjectTrain) <- "subject"

    xTrain <- read.table(gsub("train", train_or_test, "data/UCI HAR Dataset/train/X_train.txt"))
    xTrain <- xTrain[idxs]
    colnames(xTrain) <- names

    yTrain <- read.table(gsub("train", train_or_test, "data/UCI HAR Dataset/train/y_train.txt"))
    yTrain[,1] <- factor(yTrain[,1], labels=actLabels[,2])
    colnames(yTrain) <- "activity"

    cbind(subjectTrain, yTrain, xTrain)
}

# Get the train and test tables and concat them
getTables <- function() {
    train <- getTable("train")
    test <- getTable("test")
    rbind(train, test)
}

library(dplyr)

# Get the mean of each variable for each activity and each subject
processTables <- function(df) {
    df %>% group_by(subject, activity) %>% summarise_all(mean)
}
