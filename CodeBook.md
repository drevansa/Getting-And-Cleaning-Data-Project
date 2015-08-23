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

1. subject

   int 1  

2. activity

   chr "LAYING"  

3. tBodyAccMeanX

   num 0.222  

4. tBodyAccMeanY

   num -0.0405  

5. tBodyAccMeanZ

   num -0.113  

6. tBodyAccStdX

   num -0.928  

7. tBodyAccStdY

   num -0.837  

8. tBodyAccStdZ

   num -0.826  

9. tGravityAccMeanX

   num -0.249  

10. tGravityAccMeanY

   num 0.706  

11. tGravityAccMeanZ

   num 0.446  

12. tGravityAccStdX

   num -0.897  

13. tGravityAccStdY

   num -0.908  

14. tGravityAccStdZ

   num -0.852  

15. tBodyAccJerkMeanX

   num 0.0811  

16. tBodyAccJerkMeanY

   num 0.00384  

17. tBodyAccJerkMeanZ

   num 0.0108  

18. tBodyAccJerkStdX

   num -0.958  

19. tBodyAccJerkStdY

   num -0.924  

20. tBodyAccJerkStdZ

   num -0.955  

21. tBodyGyroMeanX

   num -0.0166  

22. tBodyGyroMeanY

   num -0.0645  

23. tBodyGyroMeanZ

   num 0.149  

24. tBodyGyroStdX

   num -0.874  

25. tBodyGyroStdY

   num -0.951  

26. tBodyGyroStdZ

   num -0.908  

27. tBodyGyroJerkMeanX

   num -0.107  

28. tBodyGyroJerkMeanY

   num -0.0415  

29. tBodyGyroJerkMeanZ

   num -0.0741  

30. tBodyGyroJerkStdX

   num -0.919  

31. tBodyGyroJerkStdY

   num -0.968  

32. tBodyGyroJerkStdZ

   num -0.958  

33. tBodyAccMagMean

   num -0.842  

34. tBodyAccMagStd

   num -0.795  

35. tGravityAccMagMean

   num -0.842  

36. tGravityAccMagStd

   num -0.795  

37. tBodyAccJerkMagMean

   num -0.954  

38. tBodyAccJerkMagStd

   num -0.928  

39. tBodyGyroMagMean

   num -0.875  

40. tBodyGyroMagStd

   num -0.819  

41. tBodyGyroJerkMagMean

   num -0.963  

42. tBodyGyroJerkMagStd

   num -0.936  

43. fBodyAccMeanX

   num -0.939  

44. fBodyAccMeanY

   num -0.867  

45. fBodyAccMeanZ

   num -0.883  

46. fBodyAccStdX

   num -0.924  

47. fBodyAccStdY

   num -0.834  

48. fBodyAccStdZ

   num -0.813  

49. fBodyAccMeanFreqX

   num -0.159  

50. fBodyAccMeanFreqY

   num 0.0975  

51. fBodyAccMeanFreqZ

   num 0.0894  

52. fBodyAccJerkMeanX

   num -0.957  

53. fBodyAccJerkMeanY

   num -0.922  

54. fBodyAccJerkMeanZ

   num -0.948  

55. fBodyAccJerkStdX

   num -0.964  

56. fBodyAccJerkStdY

   num -0.932  

57. fBodyAccJerkStdZ

   num -0.961  

58. fBodyAccJerkMeanFreqX

   num 0.132  

59. fBodyAccJerkMeanFreqY

   num 0.0245  

60. fBodyAccJerkMeanFreqZ

   num 0.0244  

61. fBodyGyroMeanX

   num -0.85  

62. fBodyGyroMeanY

   num -0.952  

63. fBodyGyroMeanZ

   num -0.909  

64. fBodyGyroStdX

   num -0.882  

65. fBodyGyroStdY

   num -0.951  

66. fBodyGyroStdZ

   num -0.917  

67. fBodyGyroMeanFreqX

   num -0.00355  

68. fBodyGyroMeanFreqY

   num -0.0915  

69. fBodyGyroMeanFreqZ

   num 0.0105  

70. fBodyAccMagMean

   num -0.862  

71. fBodyAccMagStd

   num -0.798  

72. fBodyAccMagMeanFreq

   num 0.0864  

73. fBodyBodyAccJerkMagMean

   num -0.933  

74. fBodyBodyAccJerkMagStd

   num -0.922  

75. fBodyBodyAccJerkMagMeanFreq

   num 0.266  

76. fBodyBodyGyroMagMean

   num -0.862  

77. fBodyBodyGyroMagStd

   num -0.824  

78. fBodyBodyGyroMagMeanFreq

   num -0.14  

79. fBodyBodyGyroJerkMagMean

   num -0.942  

80. fBodyBodyGyroJerkMagStd

   num -0.933  

81. fBodyBodyGyroJerkMagMeanFreq

   num 0.176  

82. angletBodyAccMeanGravity

   num 0.0214  

83. angletBodyAccJerkMeanGravityMean

   num 0.00306  

84. angletBodyGyroMeanGravityMean

   num -0.00167  

85. angletBodyGyroJerkMeanGravityMean

   num 0.0844  

86. angleXGravityMean

   num 0.427  

87. angleYGravityMean

   num -0.52  

88. angleZGravityMean

   num -0.352  
