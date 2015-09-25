Getting and Cleaning Data Assignment
=====================================

### Following are the objectives for the assignment

You should create one R script called run_analysis.R that does the following. 

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement. 
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names. 
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Files


[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is used for this assignment

- [run_analysis.R](https://github.com/amolnayak311/Getting-And-Cleaning-Data/blob/master/run_analysis.R) The R script that would, merge the test 
and training data into a single file extracting only the measurements related for the mean and standard deviation from the dataset. It would then write the contents of this tidy data set and the summary data as mentioned in the above section to two separate files.

- [activity_labels.txt](https://github.com/amolnayak311/Getting-And-Cleaning-Data/blob/master/activity_labels.txt) The mapping of the activity names to ids

- [complete_merged_dataset.txt](https://github.com/amolnayak311/Getting-And-Cleaning-Data/blob/master/complete_merged_dataset.txt) The file created by script. This is the file as mentioned in step 4 of the previous section

- [summarized_data.txt](https://github.com/amolnayak311/Getting-And-Cleaning-Data/blob/master/summarized_data.txt) The file by the script created as mentioned in the step 5 of the previous section.

- [test](https://github.com/amolnayak311/Getting-And-Cleaning-Data/tree/master/test) The test data set folder as in the provided dataset. Refer to 
the [readme file](https://github.com/amolnayak311/Getting-And-Cleaning-Data/blob/master/DATASET_README.txt) of the dataset for more details

- [train](https://github.com/amolnayak311/Getting-And-Cleaning-Data/tree/master/train) The training data set folder as in the provided dataset. 
Refer to the [readme file](https://github.com/amolnayak311/Getting-And-Cleaning-Data/blob/master/DATASET_README.txt) of the dataset for more details


### Running the script


- Pull the [project](https://github.com/amolnayak311/Getting-And-Cleaning-Data) to your local file system
- Start R Console and switch to the directory where the project is pull on the local file system using the ```setwd()``` command.
- Run the following and you should see the following line printed to the console

```
> source('run_analysis.R')
Successfully written the merged and summarized data to complete_merged_dataset.txt and summarized_data.txt respectively
> 
```

- Two file ***complete_merged_dataset.txt*** and ***summarized_data.txt*** would be written out to the current directory.
