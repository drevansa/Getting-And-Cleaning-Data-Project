##==============================================================================
## run_analysis.R
##==============================================================================

## Set working directory and load library
#setwd('~/Desktop/Coursera_DataScienceSpecialization/Coursera_Getting_and_Cleaning_Data/CourseProject')

library(plyr)

## read in features
features <- read.table("UCI HAR Dataset/features.txt")
features <- as.character(features[,2])

## read in activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels <- as.character(activityLabels[,2])

## build column names
cnames <- c("subject", "activity", features)

## Read in datasets and merge training and test sets to create one data set.
testsubject <- read.table("UCI HAR Dataset/test/subject_test.txt", as.is = TRUE, stringsAsFactors = FALSE)
testx <- read.table("UCI HAR Dataset/test/X_test.txt", as.is = TRUE, stringsAsFactors = FALSE)
testy <- read.table("UCI HAR Dataset/test/y_test.txt", as.is = TRUE, stringsAsFactors = FALSE)
trainsubject <- read.table("UCI HAR Dataset/train/subject_train.txt", as.is = TRUE, stringsAsFactors = FALSE)
trainx <- read.table("UCI HAR Dataset/train/X_train.txt", as.is = TRUE, stringsAsFactors = FALSE)
trainy <- read.table("UCI HAR Dataset/train/y_train.txt", as.is = TRUE, stringsAsFactors = FALSE)

test <- cbind(testsubject, testy, testx)
train <- cbind(trainsubject, trainy, trainx)
merged <- rbind(test, train)

## subset mean and standard deviation for each measurement from merged
colnames(merged) <- cnames
mergedss <- merged[, grep("mean|std|activity|subject",cnames, ignore.case = TRUE)]

## replace descriptive activity codes with names
for (i in 1:6) {
    mergedss$activity[mergedss$activity == i] <- activityLabels[i]
}

## amend descriptive variable labels
names(mergedss) <- gsub('-mean', 'Mean', names(mergedss))
names(mergedss) <- gsub('-std', 'Std', names(mergedss))
names(mergedss) <- gsub('[-()-]', '', names(mergedss))
names(mergedss) <- gsub(',gravity', 'Gravity', names(mergedss))

## create a data set with the average of each variable for each activity and each subject
mean_mergedss <- ddply(mergedss, .(subject, activity), function(x) colMeans(x[, 3:88]))

## append subject group to data frame
testgrp <- unique(test[,1]) 

subjectGroup <- mean_mergedss$subject %in% testgrp
subjectGroup <- replace(subjectGroup, subjectGroup == TRUE, "test")
subjectGroup <- replace(subjectGroup, subjectGroup == FALSE, "train")

mean_mergedss <- cbind(mean_mergedss, subjectGroup)

## save tidy dataset as a txt file
write.table(mean_mergedss, "tidy.txt", quote = FALSE, row.names = FALSE)
