tr1 - Test subjects IDs
tr2 - Data for the subjects from the test sample
tr3 - Activity references for the data in tr2
xr1 - Training subjects IDs
xr2 - Data for the subjects from the training sample
xr3 - Activity references for the data in xr2 
obs - Measurement labels
obs_tidy - logical vector which takes the value TRUE if the variable represents mean or std of data
full_te - collated test data
full_tr - collated training data
act_labels - activity labels
full_data - data frame containig test and training data with referenced activities and variables
raw_data - "narrow and long" transformation of full_data data set with subject and activity as id variables 
tidy_data - data set with the average of each variable for each activity and each subject
