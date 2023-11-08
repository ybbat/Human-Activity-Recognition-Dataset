# Human Activity Recognition dataset

## Overview
The raw data for this dataset can be found at https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones

The tidied dataset contains 180 observations of 68 variables, containing averaged accelerometer and gyroscope data for 30 volunteers when doing one of 6 activities.

## Method

To create this tidied dataset from the original data the following steps have been followed:
1. Merge training and test data
2. Add a label column for each observation containing the activity at that point in time
3. Extract only the mean and std variables from original data (delete all unneeded columns)
4. Update column names to be more consistent and human-readable
5. Group the dataset by subject and activity
6. Take the mean over subjects and activities

## Labels
activity:

1 WALKING

2 WALKING_UPSTAIRS

3 WALKING_DOWNSTAIRS

4 SITTING

5 STANDING

6 LAYING

## Variables
### Subject
The volunteer, numbered between 1-30.

### tBodyAccMean\[XYZ\]
The average 3-axial body acceleration signal output for a given subject when performing activity.

### tBodyAccStd\[XYZ\]
The average 3-axial body acceleration signal std deviation for a given subject when performing activity.

### tGravityAccMean\[XYZ\]
The average 3-axial gravity acceleration signal output for a given subject when performing activity.

### tGravityAccStd\[XYZ\]
The average 3-axial gravity acceleration signal std deviation for a given subject when performing activity.

### tBodyAccJerkMean\[XYZ\]
The average 3-axial body acceleration jerk signal for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyAccJerkStd\[XYZ\]
The average 3-axial body acceleration jerk signal std deviation for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyGyroMean\[XYZ\]
The average 3-axial body gyroscopic signal output for a given subject when performing activity.

### tBodyGyroStd\[XYZ\]
The average 3-axial body gyroscopic signal std deviation for a given subject when performing activity.

### tGravityGyroMean\[XYZ\]
The average 3-axial gravity gyroscopic signal output for a given subject when performing activity.

### tGravityGyroStd\[XYZ\]
The average 3-axial gravity gyroscopic signal std deviation for a given subject when performing activity.

### tBodyGyroJerkMean\[XYZ\]
The average 3-axial body gyroscopic jerk signal for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyGyroJerkStd\[XYZ\]
The average 3-axial body gyroscopic jerk signal std deviation for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyAccMagMean
The average magnitude body acceleration for a given subject when performing activity.

### tBodyAccMagStd
The average magnitude body acceleration std deviation for a given subject when performing activity.

### tGravityAccMagMean
The average magnitude gravity acceleration for a given subject when performing activity.

### tGravityAccMagStd
The average magnitude gravity acceleration std deviation for a given subject when performing activity.

### tBodyAccJerkMagMean
The average magnitude of body acceleration jerk signal for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyAccJerkMagStd
The average magnitude of body acceleration jerk signal std deviation for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyGyroMagMean
The average magnitude body gyroscopic signal output for a given subject when performing activity.

### tBodyGyroMagStd
The average magnitude body gyroscopic signal std deviation for a given subject when performing activity.

### tBodyGyroJerkMagMean
The average magnitude of body gyroscopic jerk signal for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### tBodyGyroJerkMagStd
The average magnitude of body gyroscopic jerk signal std deviation for a given subject when performing activity.
The jerk signals are derived using a combination of the linear acceleration and angular velocity.

### f-prefix
Dataset also contains variables with the f-prefix which are the same but with a FFT applied to the raw data.