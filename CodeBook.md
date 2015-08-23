# Code Book for the tidy dataset

### Introduction

This code book describes the variables and the data within the tidy dataset [tidy.txt](https://github.com/ofcoursera/Getting-And-Cleaning-Data-Project/blob/master/tidy.txt), and the steps performed to generate this clean set from [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) derived from the ["Human Activity Recognition Using Smartphones Dataset - Version 1.0"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Data processing
All transformations and data processing were carried out using R script [run_analysis.R](https://github.com/ofcoursera/Getting-And-Cleaning-Data-Project/blob/master/run_analysis.R)

processing requires the plyr package.

The processing steps included the following:

1. Read in column labels from UCI HAR Dataset/features.txt, and extract the feature descriptions.
2. Read in activity labels from UCI HAR Dataset/activity_labels.txt, and extract activity descriptions
3. build a list of column names, concatenating "subject", "activity" with the list of feature descriptions
4. Read in test and training datasets
  * UCI HAR Dataset/test/subject_test.txt
  * UCI HAR Dataset/test/X_test.txt
  * UCI HAR Dataset/test/y_test.txt
  * UCI HAR Dataset/train/subject_train.txt
  * UCI HAR Dataset/train/X_train.txt
  * UCI HAR Dataset/train/y_train.txt
5. steps taken to merge all datasets into one, as per the project brief
  * merge test sets by column, in the order: subject_test.txt, y_test.txt, X_test.txt
  * merge training sets by column, in the order: subject_train.txt, y_train.txt, X_train.txt
  * merge the merged test sets with the merged training sets by row, in the order: test, train
6. Subset columns from the merged dataset retaining all columns containing text strings: mean, std, activity or subject; using case insensitive selection criteria
7. replace activity codes with activity descriptions, as per the project brief
8. amend descriptive variable labels to R friendly labels, removing "-", "()", and amending format to camelCase, as per the project brief
9. derive the average of each variable for each activity and each subject, as per the project brief
10. write the resulting tidy set out to a text file, as per the project brief

### Data Dictionary - for tidy dataset tidy.txt

