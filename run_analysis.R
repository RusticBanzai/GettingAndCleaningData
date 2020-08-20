## Load required libraries
library(dplyr)
library(readr)
library(tidyr)

## Read feature and activity names and convert to character vectors for easy use
activityNames <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
activityNames <- activityNames$V2

featureNames <- read.table("./data/UCI HAR Dataset/features.txt")
featureNames <- featureNames$V2

## Read all test and training data into tibble data frames
testData <- as_tibble(read.table("./data/UCI HAR Dataset/test/X_test.txt"))
names(testData) <- featureNames
testActivity <- as_tibble(read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names = "Activity"))
testSubject <- as_tibble(read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names = "SubjectID"))

trainData <- as_tibble(read.table("./data/UCI HAR Dataset/train/X_train.txt"))
names(trainData) <- featureNames
trainActivity <- as_tibble(read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names = "Activity"))
trainSubject <- as_tibble(read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names = "SubjectID"))

## Build full test and train tables with activity and subject ids included
testData <- bind_cols(testSubject, testActivity, testData)
trainData <- bind_cols(trainSubject, trainActivity, trainData)

## Merge test and train tables
completeData <- bind_rows(testData, trainData)

## Rename activity column with descriptive activity names
completeData <- mutate(completeData, Activity = activityNames[Activity])

## Extract measurements on the mean and standard dev for each measurement
completeData <- select(completeData, SubjectID, Activity, contains("mean()"), contains("std()"))

completeData <- group_by(completeData, SubjectID, Activity)

## Create a new dataset with the average of each variable by activity and subject
average_by_subject_activity <- summarize_all(completeData, mean)

## Rename the variables to indicate they are now averages
colnames(average_by_subject_activity)[3:length(average_by_subject_activity)] <- 
  paste("avg", colnames(average_by_subject_activity)[3:length(average_by_subject_activity)], sep = "_")

## Output final data set as a .txt file named analysisOutput.txt
write.table(average_by_subject_activity, "analysisOutput.txt", row.names = FALSE)