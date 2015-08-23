# Getting-And-Cleaning-Data-Project
## Introduction
The aim of the project was to prepare a single tidy data file from the "Human Activity Recognition Using Smartphones Dataset - Version 1.0".

## Materials
### Data 
The data files used in this project derive from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

These can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unzip the download file within your working directory.
getdata_projectfiles_UCI HAR Dataset.zip will unzip creating directory "UCI HAR Dataset"

Directory UCI HAR Dataset contains:
activity_labels.txt
features_info.txt
features.txt
README.txt
Directory test
Directory train


## run_analysis.R
An R script, to be downloaded and run locally, does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. labels the data set with descriptive variable names. 
5. creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Script output - tidy.txt
To view the tidy.txt dataset, in R, within the working directory, type:
```
data <- read.table("tidy.txt", header = TRUE)
View(data)
```

## Code Book
CodeBook.md
