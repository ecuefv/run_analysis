run_analysis
============
The script deals with a database summary statistics of recordings of 30 subjects (split into test and training sets) performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. After the required R packages are loaded, the compressed data is downloaded from the web and extracted into a sub-folder "data" of the chosen working folder (the sub-folder is created in case it does not exist). The data is loaded into R by creating three separate objects for each dataset - one for the participating subject IDs, one for the performed activities' numerical references and one for the resulting summary statistics. 
All tasks listed in the assignments description are completed by the script but in a different order. Firstly the test and training summary statistics are appropriately labeled using the tags form the features.txt file. Afterwards, they are filtered for measurements representing mean or standard deviation of recordings with the help of a logical vector. The variable names are then tidied up and collated training and test data frames are created containing respective subject IDs, activity references and filtered summary statistics. The two data frames are then merged and the activities are appropriatelly referenced using the activity_labels.txt file. Finally, a wide-and-short data set is created showing the average of each variable for each activity and each subject. 
The final data set contains 68 columns and 180 observations. The choice of format is motivated by the first two principles of tidy data - one variable per column and one observation per row.


Assumptions: The order of the variables in X_train.txt and X_test.txt corresponds to the order of the variable names in features.txt

Requirements to run the script: 
-The following R packages need to have been installed - stringr, plyr and reshape2
-Internet connection
