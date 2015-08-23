# Getting-And-Cleaning-Data-Project

### Introduction
This repository contains files and information required for the Coursera Getting And Cleaning Data course project, the aim of which was to prepare a tidy data set from the "Human Activity Recognition Using Smartphones Dataset - Version 1.0", which can be used for later analysis.

### Contents of the Repository

#### R script run_analysis.R

The script does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. labels the data set with descriptive variable names. 
5. creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#### Script output - tidy.txt
The output of run_analysis.R is text file tidy.txt, which is written out to the working directory.
To view the contents of the file locally, in R, within the working directory, type:
```
data <- read.table("tidy.txt", header = TRUE)
View(data)
```
A copy of the output has been upload to this repository for review.

#### Code Book
CodeBook.md 
describes the variables, the data, and any transformations or work that was performed to clean up the data.


### Materials from external sources

#### Data 
The data files used in this project derive from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

These can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Unzipping "getdata_projectfiles_UCI HAR Dataset.zip" within your working directory, to produce sub directory "UCI HAR Dataset".

Directory UCI HAR Dataset contains:
* activity_labels.txt
* features_info.txt
* features.txt
* README.txt ~
* Directory test
  * Inertial Signals ~
  * subject_test.txt
  * X_test.txt
  * y_test.txt
* Directory train
  * Inertial Signals ~
  * subject_train.txt
  * X_train.txt
  * y_train.txt

*where: ~ file not required by run_analysis.R*

### Repeating the analysis locally

To re-run the analysis:

1. download run_analysis.R to your local working directory
2. download "getdata_projectfiles_UCI HAR Dataset.zip"
3. unzip "getdata_projectfiles_UCI HAR Dataset.zip" within the working directory to generate sub-directory "UCI HAR Dataset"
4. open R or RStudio
5. set the path to your working directory using the setwd() command, e.g:
        ```
        setwd("/Desktop/MyWorkingDirectory")
        ```
6. call the run_analysis.R using the source command; else copy and paste the contents into the R terminal window.
        ```
        source("run_analysis.R")
        ```
