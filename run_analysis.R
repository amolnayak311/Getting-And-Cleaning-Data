#Bad way to set the wd
#setwd('C:\\My Stuff\\Amol\\Data Science\\Coursera, Johns Hopkins\\Getting and Cleaning Data\\Week 3\\Assignment')

#Read the activity labels
activity_labels <- read.table('./activity_labels.txt', col.names = c('activity_id', "activity_label_name"))

#Read the features, just read the second column which is the name of the feature.
features <- read.table('./features.txt')
feature_names <- features[, 2]

#Only the index attributes which contain mean() and std(), note that features like meanFreq(), gravityMean etc
#are not included as it is assumed only the ones with mean() and std() are needed.
relevant_feature_index <- grep('mean\\(\\)|std\\(\\)', feature_names, ignore.case = TRUE)

#Read the test features
test_features <- read.table('./test/X_test.txt')
#dim(test_features)
#[1] 2947  561

#Read the test subjects
test_subjects <- read.table('./test/subject_test.txt')
#dim(test_subjects)
#[1] 2947    1

#Read the test labels, join them with the master frame for labels read earlier to get the label's disp name
test_labels <- merge(
                      read.table('./test/y_test.txt', col.names = c('activity_id')),
                      activity_labels,
                      by='activity_id')$activity_label_name
                      
#dim(test_subjects)
#[1] 2947    1

#Read the training features
train_features <- read.table('./train/X_train.txt')
#dim(train_features)
#[1] 7352  561

#Read the training subjects
train_subjects <- read.table('./train/subject_train.txt')
#dim(train_subjects)
#[1] 7352    1

#Read the training labels,join them with the master frame for labels read earlier to get the label's disp name
train_labels <- merge(
                      read.table('./train/y_train.txt', col.names = c('activity_id')),
                      activity_labels,
                      by='activity_id')$activity_label_name
                      
#dim(train_labels)
#[1] 7352    1

#Beautify the attribute names, convert the following for instance tBodyGyro-std()-X to tBodyGyroStdX
#Replace mean() with Mean, std() with Std and strip off - from the activity name
relevant_features <- feature_names[relevant_feature_index]
hopefully_meaningful_attributes <- gsub('-', '', gsub('std\\(\\)', 'Std', gsub('mean\\(\\)', 'Mean', relevant_features)))

column_names <- c('Subject', hopefully_meaningful_attributes, 'Label')
#Bind by columns the subject id, measurements and the label names for the test data
complete_test_data <- cbind(test_subjects, test_features[, relevant_feature_index], test_labels)
colnames(complete_test_data) <- column_names

#Bind by columns the subject id, measurements and the label names for the training data
complete_train_data <- cbind(train_subjects, train_features[,relevant_feature_index], train_labels)
colnames(complete_train_data) <- column_names

#Merge the two data sets, select the columns that are relevant.
merged_data_set <- rbind(complete_test_data,complete_train_data)
#dim(merged_data_set)
#[1] 10299    68

#Summarise the values of each obervable grouped by subject and the Activity label
library(reshape2)
library(dplyr)
melted <- melt(merged_data_set, id.vars = c('Subject', 'Label'))
summary <- summarise(group_by(melted,Subject,Label,variable), mean=mean(value))
colnames(summary) <- c('Subject', 'Label', 'Attribute', 'MeanAttributeValue')

#Write out the dataframes as csv
write.table(summary, 'summarized_data.txt', row.names = FALSE)
write.table(merged_data_set, 'complete_merged_dataset.txt', row.names = FALSE)


