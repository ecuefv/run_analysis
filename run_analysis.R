library(plyr)
library(stringr)
library(reshape2)
#downloading the data in zip format and extracting all files within to a folder called data
if(!file.exists("data")) dir.create("data")
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/data.zip")
unzip("./data/data.zip",exdir="./data")
#load test and training data into R
tr1<-read.table("./data/UCI HAR Dataset/test/subject_test.txt")
tr2<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
tr3<-read.table("./data/UCI HAR Dataset/test/y_test.txt")
xr1<-read.table("./data/UCI HAR Dataset/train/subject_train.txt")
xr2<-read.table("./data/UCI HAR Dataset/train/X_train.txt")
xr3<-read.table("./data/UCI HAR Dataset/train/y_train.txt")
#load the variable names into R
obs<-read.table("./data/UCI HAR Dataset/features.txt")
#replace the variable names in the test and training data sets with tags from the features.txt file
names(tr2)<-obs$V2
names(xr2)<-obs$V2
#create a logical vector which takes the value TRUE if the variable represents mean or std of data
obs_tidy<-grepl("-mean[(][)]|-std[(][)]",names(tr2))
#use the obs_tidy logical vector to filter both the training and test data sets for the variables representing mean or standard deviation
obs_te<-tr2[,obs_tidy]
obs_tr<-xr2[,obs_tidy]
#collate test and trainig data into two separate data frames
full_te<-data.frame(tr1,tr3,obs_te)
full_tr<-data.frame(xr1,xr3,obs_tr)
#merge the two data frames
full_data<-rbind(full_te,full_tr)
#attach labels to subject and activity variables (created as the first two columns)
names(full_data)[1:2]<-c("subject","activity")
#load the activity names from activity_label.txt and use them to reference the activity variable
act_labels<-read.table("./data/UCI HAR Dataset/activity_labels.txt")
names(act_labels)<-c("activity","activity_name")
full_data<-join(full_data,act_labels,by="activity",type="left")
full_data$activity<-NULL
#restructure the data frame keeping subject and activity_name as id variables
raw_data<-melt(full_data,c("subject","activity_name"))
#create the new data set
tidy_data<-dcast(raw_data,subject+activity_name~variable,mean)
