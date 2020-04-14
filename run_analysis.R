###########################################################################################
# 
# Getting and Cleaning Data Course Assignment
#
# script file : run_analysis.R
#
###########################################################################################

library(dplyr)

# download the zip file if it hasn't already been downloaded
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile <- "Dataset.zip"
if (!file.exists(destFile)) {
  download.file(url, destFile)
}

# unzip the file if data directory doesn't already exist
dataPath <- "./UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(destFile)
}

# read training data
subject_train <- read.table(file.path(dataPath, "train", "subject_train.txt"))
activity_train <- read.table(file.path(dataPath, "train", "y_train.txt"))
measure_train <- read.table(file.path(dataPath, "train", "X_train.txt"))

# read test data
subject_test <- read.table(file.path(dataPath, "test", "subject_test.txt"))
activity_test <- read.table(file.path(dataPath, "test", "y_test.txt"))
measure_test <- read.table(file.path(dataPath, "test", "X_test.txt"))

## Step 1. Merges the training and the test sets to create one data set.
# create measure data set
measure_data <- rbind(measure_train, measure_test)

# create activity data set
activity_data <- rbind(activity_train, activity_test)

# create 'subject' data set
subject_data <- rbind(subject_train, subject_test)

## Step 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# read feature 
features <- read.table(file.path(dataPath, "features.txt"))

# extract only feature names containing mean() or std()
selected_columns <- grep("(mean|std)\\(\\)", features[, 2])
measure_data <- measure_data[,selected_columns]

## Step 3. Uses descriptive activity names to name the activities in the data set
# read activity_labels
activity_labels = read.table(file.path(dataPath, "activity_labels.txt"))

# replace activity codes with activity names
activity_data[, 1] <- activity_labels[activity_data[, 1], 2]

## Step 4. Appropriately labels the data set with descriptive variable names. 
colnames(subject_data) <- "subject"
colnames(activity_data) <- "activity"
colnames(measure_data) <- features[selected_columns,2]

# combine all data
all_data <- cbind(subject_data, activity_data, measure_data)

## Step 5. Creates a tidy data set with the average of each variable for each activity and each subject.
tidy_data <- all_data %>%
               group_by(subject, activity) %>%
               summarise_all(funs(mean))

# write data into a text file
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
