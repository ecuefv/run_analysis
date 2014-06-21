Link to the original data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More information regarding the original data can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data sets used in the script:

tr1 - Test subjects IDs
tr2 - Data for the subjects from the test sample
tr3 - Numerical references for the measured activities in tr2
xr1 - Training subjects IDs
xr2 - Data for the subjects from the training sample
xr3 - Numerical references for the measured activities in xr2 
obs - Measurement labels
obs_tidy - logical vector which takes the value TRUE if the variable represents mean or std of data
obs_te - Test data filtered for variables containing mean or standart deviation measures
obs_tr - Training data filtered for variables containing mean or standart deviation measures
full_te - collated test data (subject IDs, activity refence and variables data)
full_tr - collated training data (subject IDs, activity refence and variables data)
act_labels - activity labels
full_data - data frame containig test and training data with referenced activities and variables
raw_data - "narrow and long" transformation of full_data data set with subject and activity as id variables 
tidy_data - data set with the average of each variable for each activity and each subject

The final data set (tidy_data) contains 68 variables - subject IDs, activity names and mean and stadard deviation of the following measurements:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Each measurement with the suffix "-XYZ" is recorded as three separate estimates - one for each signal direction (X, Y and Z). 

