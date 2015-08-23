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

Fields in tidy dataset in order of output, left to right

1. subject

   int 1...30  

2. activity

   chr  

 1.WALKING  
 2.WALKING_UPSTAIRS  
 3.WALKING_DOWNSTAIRS  
 4.SITTING  
 5.STANDING  
 6.LAYING  

3. tBodyAccMeanX

   average of mean body acceleration signal in the X direction for the activity by subject  
   num 0.22159824394...0.3014610196

4. tBodyAccMeanY

   average of mean body acceleration signal in the Y direction for the activity by subject  
   num -0.0405139534294...-0.00130828765170213 

5. tBodyAccMeanZ

   average of mean body acceleration signal in the Z direction for the activity by subject  
   num -0.152513899520833...-0.07537846886

6. tBodyAccStdX

   average of standard deviation body acceleration signal in the X direction for the activity by subject  
   num -0.996068635384615...0.626917070512821 

7. tBodyAccStdY

   average of standard deviation body acceleration signal in the Y direction for the activity by subject  
   num -0.990240946666667...0.616937015333333  

8. tBodyAccStdZ

   average of standard deviation body acceleration signal in the Z direction for the activity by subject  
   num -0.987658662307692...0.609017879074074  

9. tGravityAccMeanX

   average of mean gravity acceleration signal in the X direction for the activity by subject  
   num -0.680043155060241...0.974508732 

10. tGravityAccMeanY

   average of mean gravity acceleration signal in the Y direction for the activity by subject  
   num -0.479894842941176...0.9565938142105266  

11. tGravityAccMeanZ

   average of mean gravity acceleration signal in the Z direction for the activity by subject  
   num -0.49508872037037...0.9578730416 

12. tGravityAccStdX

   average of standard deviation gravity acceleration signal in the X direction for the activity by subject  
   num -0.996764227384615...-0.829554947808219 

13. tGravityAccStdY

   average of standard deviation gravity acceleration signal in the Y direction for the activity by subject  
   num -0.99424764884058...-0.643578361424658 

14. tGravityAccStdZ

   average of standard deviation gravity acceleration signal in the Z direction for the activity by subject  
   num -0.990957249538462...-0.610161166287671  

15. tBodyAccJerkMeanX

   average of mean body linear acceleration jerk signal in the X direction for the activity by subject  
   num 0.0426880986186441...0.130193043809524 

16. tBodyAccJerkMeanY

   average of mean body linear acceleration jerk signal in the Y direction for the activity by subject  
   num -0.0386872111282051...0.056818586275  

17. tBodyAccJerkMeanZ

   average of mean body linear acceleration jerk signal in the Z direction for the activity by subject  
   num -0.0674583919268293...0.0380533591627451  

18. tBodyAccJerkStdX

   average of standard deviation body linear acceleration jerk signal in the X direction for the activity by subject  
   num -0.994604542264151...0.544273037307692  

19. tBodyAccJerkStdY

   average of standard deviation body linear acceleration jerk signal in the Y direction for the activity by subject  
   num -0.989513565652174...0.355306716915385  

20. tBodyAccJerkStdZ

   average of standard deviation body linear acceleration jerk signal in the Z direction for the activity by subject  
   num -0.993288313333333...0.0310157077775926  

21. tBodyGyroMeanX

   average of mean body gravity acceleration signal in the X direction for the activity by subject  
   num -0.205775427307692...0.19270447595122 

22. tBodyGyroMeanY

   average of mean body gravity acceleration signal in the Y direction for the activity by subject  
   num -0.204205356087805...0.0274707556666667 

23. tBodyGyroMeanZ

   average of mean body gravity acceleration signal in the Z direction for the activity by subject  
   num -0.0724546025804878...0.179102058245614  

24. tBodyGyroStdX

   average of standard deviation body gravity acceleration signal in the X direction for the activity by subject  
   num -0.994276591304348...0.267657219333333  

25. tBodyGyroStdY

   average of standard deviation body gravity acceleration signal in the Y direction for the activity by subject  
   num -0.994210471914894...0.476518714444444 

26. tBodyGyroStdZ

   average of standard deviation body gravity acceleration signal in the Z direction for the activity by subject  
   num -0.985538363333333...0.564875818162963  

27. tBodyGyroJerkMeanX

   average of mean body angular velocity jerk signal in the X direction for the activity by subject  
   num -0.157212539189362...-0.0220916265065217  

28. tBodyGyroJerkMeanY

   average of mean body angular velocity jerk signal in the Y direction for the activity by subject  
   num -0.0768089915604167...-0.0132022768074468  

29. tBodyGyroJerkMeanZ

   average of mean body angular velocity jerk signal in the Z direction for the activity by subject  
   num -0.0924998531372549...-0.00694066389361702  

30. tBodyGyroJerkStdX

   average of standard deviation body angular velocity jerk signal in the X direction for the activity by subject  
   num -0.99654254057971...0.179148649684615 

31. tBodyGyroJerkStdY

   average of standard deviation body angular velocity jerk signal in the Y direction for the activity by subject  
   num -0.997081575652174...0.295945926186441  

32. tBodyGyroJerkStdZ

   average of standard deviation body angular velocity jerk signal in the Z direction for the activity by subject  
   num -0.995380794637681...0.193206498960417  

33. tBodyAccMagMean

   average of mean magnitude of body acceleration signal for the activity by subject  
   num -0.986493196666667...0.644604325128205  

34. tBodyAccMagStd

   average of standard deviation magnitude of body acceleration signal for the activity by subject  
   num -0.986464542615385...0.428405922622222 

35. tGravityAccMagMean

   average of mean magnitude of gravity acceleration signal for the activity by subject  
   num -0.986493196666667...0.644604325128205 

36. tGravityAccMagStd

   average of standard magnitude of gravity acceleration signal for the activity by subject  
   num -0.986464542615385...0.428405922622222   

37. tBodyAccJerkMagMean

   average of mean magnitude of body linear acceleration jerk signal for the activity by subject  
   num -0.99281471515625...0.434490400974359   

38. tBodyAccJerkMagStd

   average of standard deviation magnitude of body linear acceleration jerk signal for the activity by subject  
   num -0.994646916811594...0.450612065720513 

39. tBodyGyroMagMean

   average of mean magnitude of body gravity acceleration for the activity by subject  
   num -0.980740846769231...0.418004608615385  

40. tBodyGyroMagStd

   average of standard deviation magnitude of body gravity acceleration for the activity by subject  
   num -0.981372675614035...0.299975979851852  

41. tBodyGyroJerkMagMean

   average of mean magnitude of body gravity acceleration jerk for the activity by subject  
   num -0.997322526811594...0.0875816618205128  

42. tBodyGyroJerkMagStd

   average of standard deviation magnitude of body gravity acceleration jerk for the activity by subject  
   num -0.997666071594203...0.250173204117966  

43. fBodyAccMeanX

   average of mean Fast Fourier Transformed body acceleration signal in the X direction for the activity by subject  
   num -0.995249932641509...0.537012022051282

44. fBodyAccMeanY

   average of mean Fast Fourier Transformed body acceleration signal in the Y direction for the activity by subject  
   num -0.989034304057971...0.524187686888889  

45. fBodyAccMeanZ

   average of mean Fast Fourier Transformed body acceleration signal in the Z direction for the activity by subject  
   num -0.989473926666667...0.280735952206667  

46. fBodyAccStdX

   average of standard deviation Fast Fourier Transformed body acceleration signal in the X direction for the activity by subject  
   num -0.996604570307692...0.658506543333333  

47. fBodyAccStdY

   average of standard deviation Fast Fourier Transformed body acceleration signal in the Y direction for the activity by subject  
   num -0.990680395362319...0.560191344 

48. fBodyAccStdZ

   average of standard deviation Fast Fourier Transformed body acceleration signal in the Z direction for the activity by subject  
   num -0.987224804307692...0.687124163703704 

49. fBodyAccMeanFreqX

   average of mean frequency domain signals from Fast Fourier Transformed body acceleration signal in the X direction for the activity by subject  
   num -0.635913046346154...0.159123629063636  

50. fBodyAccMeanFreqY

   average of mean frequency domain signals from Fast Fourier Transformed body acceleration signal in the Y direction for the activity by subject  
   num -0.379518455061538...0.466528231788462 

51. fBodyAccMeanFreqZ

   average of mean frequency domain signals from Fast Fourier Transformed body acceleration signal in the Z direction for the activity by subject  
   num -0.520114793584906...0.402532553395833   

52. fBodyAccJerkMeanX

   average of mean Fast Fourier Transformed body linear acceleration jerk signal in the X direction for the activity by subject  
   num -0.994630797358491...0.474317256051282  

53. fBodyAccJerkMeanY

   average of mean Fast Fourier Transformed body linear acceleration jerk signal in the Y direction for the activity by subject  
   num -0.989398823913043...0.276716853307692 

54. fBodyAccJerkMeanZ

   average of mean Fast Fourier Transformed body linear acceleration jerk signal in the Z direction for the activity by subject  
   num -0.992018447826087...0.157775692377778 

55. fBodyAccJerkStdX

   average of standard deviation Fast Fourier Transformed body linear acceleration jerk signal in the X direction for the activity by subject  
   num -0.995073759245283...0.476803887476923 

56. fBodyAccJerkStdY

   average of standard deviation Fast Fourier Transformed body linear acceleration jerk signal in the Y direction for the activity by subject  
   num -0.990468082753623...0.349771285415897  

57. fBodyAccJerkStdZ

   average of standard deviation Fast Fourier Transformed body linear acceleration jerk signal in the Z direction for the activity by subject  
   num -0.993107759855072...-0.00623647528983051 

58. fBodyAccJerkMeanFreqX

   average of mean frequency domain signals from Fast Fourier Transformed body linear acceleration jerk signal in the X direction for the activity by subject  
   num -0.576044001875...0.331449281481482 

59. fBodyAccJerkMeanFreqY

   average of mean frequency domain signals from Fast Fourier Transformed body linear acceleration jerk signal in the Y direction for the activity by subject  
   num -0.601971415384615...0.195677336307692 

60. fBodyAccJerkMeanFreqZ

   average of mean frequency domain signals from Fast Fourier Transformed body linear acceleration jerk signal in the Z direction for the activity by subject  
   num -0.62755547372549...0.230107945944444  

61. fBodyGyroMeanX

   num -0.99312260884058...0.474962448333333 

62. fBodyGyroMeanY

   num -0.994025488297872...0.328817010088889

63. fBodyGyroMeanZ

   num -0.985957788...0.492414379822222  

64. fBodyGyroStdX

   num -0.994652185217391...0.196613286661538  

65. fBodyGyroStdY

   num -0.994353086595745...0.646233637037037  

66. fBodyGyroStdZ

   num -0.986725274871795...0.522454216314815  

67. fBodyGyroMeanFreqX

   num -0.395770150677419...0.249209411510602 

68. fBodyGyroMeanFreqY

   num -0.666814815306122...0.273141323315789

69. fBodyGyroMeanFreqZ

   num -0.507490866734694...0.3770740968  

70. fBodyAccMagMean

   num -0.986800645362319...0.586637550769231  

71. fBodyAccMagStd

   num -0.987648484461539...0.178684580868889 

72. fBodyAccMagMeanFreq

   num -0.312338030213846...0.435846931652174  

73. fBodyBodyAccJerkMagMean

   num -0.993998275797101...0.538404846128205  

74. fBodyBodyAccJerkMagStd

   num -0.994366667681159...0.316346415348718 

75. fBodyBodyAccJerkMagMeanFreq

   num -0.125210388757581...0.488088499666667

76. fBodyBodyGyroMagMean

   num -0.986535242105263...0.203979764835897  

77. fBodyBodyGyroMagStd

   num -0.981468841692308...0.236659662496296  

78. fBodyBodyGyroMagMeanFreq

   num -0.456638670923077...0.409521611525424 

79. fBodyBodyGyroJerkMagMean

   num -0.997617389275362...0.146618569064407  

80. fBodyBodyGyroJerkMagStd

   num -0.99758523057971...0.287834616098305 

81. fBodyBodyGyroJerkMagMeanFreq

   num -0.182923596577778...0.426301679855072   

82. angletBodyAccMeanGravity

   num -0.163042575021277...0.129153963587755 

83. angletBodyAccJerkMeanGravityMean

   num -0.120553975717391...0.203259965863014   

84. angletBodyGyroMeanGravityMean

   num -0.389305120341463...0.444101172307692 

85. angletBodyGyroJerkMeanGravityMean

   num -0.223672056052174...0.182384802705085

86. angleXGravityMean

   num -0.947116527659574...0.737784354819277 

87. angleYGravityMean

   num -0.874567701929825...0.42476122745098  

88. angleZGravityMean

   num -0.873649367...0.390444368518519   
