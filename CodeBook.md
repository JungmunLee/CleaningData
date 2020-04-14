---
title: "CodeBook.md"
author: "Jungmun Lee"
date: "14/04/2020"
---

## The process of transformation

1. Train data(7352 observations) has been downloaded for each subject, activity and measurement data

2. Test data(2947 observations) has been downloaded for each subject, activity and measurement data

3. Combine train data and test data and the total becomes 10299 observations with 561 measurement variables

3. 66 features containing "mean()" or "std()" have been extracted from the total of 561 features

4. "activity" column has been replaced with activity names 
   ("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
   
5. Combine subject, activity and measurement data

6. Calculate the average of each variable(Column 3 ~ 68) for each "subject" and each "activity"


## tidy_data.txt

This tidy data set includes 180 observations with 68 columns

   - Column 1: "subject"
   
   - Column 2: "activity"
   
   - Column 3: tBodyAcc-mean()-X 

   - Column 4: tBodyAcc-mean()-Y
 
   - Column 5: tBodyAcc-mean()-Z
 
   - Column 6: tBodyAcc-std()-X
 
   - Column 7: tBodyAcc-std()-Y
 
   - Column 8: tBodyAcc-std()-Z
 
   - Column 9: tGravityAcc-mean()-X
 
   - Column 10: tGravityAcc-mean()-Y
 
   - Column 11: tGravityAcc-mean()-Z
 
   - Column 12: tGravityAcc-std()-X
 
   - Column 13: tGravityAcc-std()-Y
 
   - Column 14: tGravityAcc-std()-Z
 
   - Column 15: tBodyAccJerk-mean()-X
 
   - Column 16: tBodyAccJerk-mean()-Y
 
   - Column 17: tBodyAccJerk-mean()-Z
 
   - Column 18: tBodyAccJerk-std()-X
 
   - Column 19: tBodyAccJerk-std()-Y
 
   - Column 20: tBodyAccJerk-std()-Z
 
   - Column 21: tBodyGyro-mean()-X
 
   - Column 22: tBodyGyro-mean()-Y
 
   - Column 23: tBodyGyro-mean()-Z
 
   - Column 24: tBodyGyro-std()-X
 
   - Column 25: tBodyGyro-std()-Y
 
   - Column 26: tBodyGyro-std()-Z
 
   - Column 27: tBodyGyroJerk-mean()-X
 
   - Column 28: tBodyGyroJerk-mean()-Y
 
   - Column 29: tBodyGyroJerk-mean()-Z
 
   - Column 30: tBodyGyroJerk-std()-X
 
   - Column 31: tBodyGyroJerk-std()-Y
 
   - Column 32: tBodyGyroJerk-std()-Z
 
   - Column 33: tBodyAccMag-mean()
 
   - Column 34: tBodyAccMag-std()
 
   - Column 35: tGravityAccMag-mean()
 
   - Column 36: tGravityAccMag-std()
 
   - Column 37: tBodyAccJerkMag-mean()
 
   - Column 38: tBodyAccJerkMag-std()
 
   - Column 39: tBodyGyroMag-mean()
 
   - Column 40: tBodyGyroMag-std()
 
   - Column 41: tBodyGyroJerkMag-mean()
 
   - Column 42: tBodyGyroJerkMag-std()
 
   - Column 43: fBodyAcc-mean()-X
 
   - Column 44: fBodyAcc-mean()-Y
 
   - Column 45: fBodyAcc-mean()-Z
 
   - Column 46: fBodyAcc-std()-X
 
   - Column 47: fBodyAcc-std()-Y
 
   - Column 48: fBodyAcc-std()-Z
 
   - Column 49: fBodyAccJerk-mean()-X
 
   - Column 50: fBodyAccJerk-mean()-Y
 
   - Column 51: fBodyAccJerk-mean()-Z
 
   - Column 52: fBodyAccJerk-std()-X
 
   - Column 53: fBodyAccJerk-std()-Y
 
   - Column 54: fBodyAccJerk-std()-Z
 
   - Column 55: fBodyGyro-mean()-X
 
   - Column 56: fBodyGyro-mean()-Y
 
   - Column 57: fBodyGyro-mean()-Z
 
   - Column 58: fBodyGyro-std()-X
 
   - Column 59: fBodyGyro-std()-Y
 
   - Column 60: fBodyGyro-std()-Z
 
   - Column 61: fBodyAccMag-mean()
 
   - Column 62: fBodyAccMag-std()
 
   - Column 63: fBodyBodyAccJerkMag-mean()
 
   - Column 64: fBodyBodyAccJerkMag-std()
 
   - Column 65: fBodyBodyGyroMag-mean()
 
   - Column 66: fBodyBodyGyroMag-std()
 
   - Column 67: fBodyBodyGyroJerkMag-mean()
 
   - Column 68: fBodyBodyGyroJerkMag-std()




