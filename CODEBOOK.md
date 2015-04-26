#Code book for Getting and Cleaning Data Class
Data is sourced from the following link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The file features_info.txt within that zip file lists the various measurements taken and related calculations.

This assignment asked for output for just the measurements that were mean or standard deviations.
Therefore, the included columns are those with mean or std in the name.

For each unique combination of Subject and Activity, the mean of each desired measurment is calculated and stored in 
a column named the same as the source column prepended by "MEAN_".  
(Note that when the names were applied as the column headings for
the data frames, the characters "(", ")", "-" were imported as ".") 

The result set is a comma-delimited file results.txt

These are the list of columns in the result set:

Subject
Activity
MEAN_tBodyAcc.mean...X
MEAN_tBodyAcc.mean...Y
MEAN_tBodyAcc.mean...Z
MEAN_tGravityAcc.mean...X
MEAN_tGravityAcc.mean...Y
MEAN_tGravityAcc.mean...Z
MEAN_tBodyAccJerk.mean...X
MEAN_tBodyAccJerk.mean...Y
MEAN_tBodyAccJerk.mean...Z
MEAN_tBodyGyro.mean...X
MEAN_tBodyGyro.mean...Y
MEAN_tBodyGyro.mean...Z
MEAN_tBodyGyroJerk.mean...X
MEAN_tBodyGyroJerk.mean...Y
MEAN_tBodyGyroJerk.mean...Z
MEAN_tBodyAccMag.mean..
MEAN_tGravityAccMag.mean..
MEAN_tBodyAccJerkMag.mean..
MEAN_tBodyGyroMag.mean..
MEAN_tBodyGyroJerkMag.mean..
MEAN_fBodyAcc.mean...X
MEAN_fBodyAcc.mean...Y
MEAN_fBodyAcc.mean...Z
MEAN_fBodyAccJerk.mean...X
MEAN_fBodyAccJerk.mean...Y
MEAN_fBodyAccJerk.mean...Z
MEAN_fBodyGyro.mean...X
MEAN_fBodyGyro.mean...Y
MEAN_fBodyGyro.mean...Z
MEAN_fBodyAccMag.mean..
MEAN_fBodyBodyAccJerkMag.mean..
MEAN_fBodyBodyGyroMag.mean..
MEAN_fBodyBodyGyroJerkMag.mean..
MEAN_tBodyAcc.std...X
MEAN_tBodyAcc.std...Y
MEAN_tBodyAcc.std...Z
MEAN_tGravityAcc.std...X
MEAN_tGravityAcc.std...Y
MEAN_tGravityAcc.std...Z
MEAN_tBodyAccJerk.std...X
MEAN_tBodyAccJerk.std...Y
MEAN_tBodyAccJerk.std...Z
MEAN_tBodyGyro.std...X
MEAN_tBodyGyro.std...Y
MEAN_tBodyGyro.std...Z
MEAN_tBodyGyroJerk.std...X
MEAN_tBodyGyroJerk.std...Y
MEAN_tBodyGyroJerk.std...Z
MEAN_tBodyAccMag.std..
MEAN_tGravityAccMag.std..
MEAN_tBodyAccJerkMag.std..
MEAN_tBodyGyroMag.std..
MEAN_tBodyGyroJerkMag.std..
MEAN_fBodyAcc.std...X
MEAN_fBodyAcc.std...Y
MEAN_fBodyAcc.std...Z
MEAN_fBodyAccJerk.std...X
MEAN_fBodyAccJerk.std...Y
MEAN_fBodyAccJerk.std...Z
MEAN_fBodyGyro.std...X
MEAN_fBodyGyro.std...Y
MEAN_fBodyGyro.std...Z
MEAN_fBodyAccMag.std..
MEAN_fBodyBodyAccJerkMag.std..
MEAN_fBodyBodyGyroMag.std..
MEAN_fBodyBodyGyroJerkMag.std..

Subject is a numerical identifer of the volunteer whose activity was tracked.
Activity is one of 6 possible activities for which the data was captured.