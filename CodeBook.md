Code Book
===========

The data for this assignment is taken from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Feature selection and Feature Naming

All mean and standard deviations from the original data set are used. The following expression is used to filter out the feature names

```
grep('mean\\(\\)|std\\(\\)', feature_names, ignore.case = TRUE)
```
This ensures that only those features containing ***mean()*** and ***std()*** are extracted

A total of 66 features are selected using this regular expression.


All measurements are done for 6 types of activities as seen below

| Activity Id | 	Activity Label 		|
|-------------|-------------------------|
|     1       |      WALKING			|
|     2		  |	    WALKING_UPSTAIRS	|
|     3  	  |		WALKING_DOWNSTAIRS	|
|     4       |      SITTING			|
|     5       |     STANDING			|
|     6       |       LAYING			|

Following expression is used to convert the names to something meaningful
```
gsub('-', '', gsub('std\\(\\)', 'Std', gsub('mean\\(\\)', 'Mean', relevant_features)))
```
The above expression strips off all the '-' and '()' from the names of the features. 
So for Instance *tBodyAcc-mean()-X* becomes *tBodyAccMeanX*

Following are the features found in the data set. Note that the order of the fields given below and in the actual data written
to the files is not same. For all other fields except Subject and Label, refer to the source data set for the meaning.

|	Feature Name					|	Description																				|
|-----------------------------------|-------------------------------------------------------------------------------------------|
|	Subject							|	The id for the subject whose movements are tracked by the phone's accelerometer			|
|	Label							|	The Activity Label as given in the above table											|
| tBodyAccMeanX                     | 																							| 
| tBodyAccStdY                      |                               															| 
| tGravityAccMeanZ                  |                               															| 
| tBodyAccJerkMeanX                 |                               															| 
| tBodyAccJerkStdY                  |                               															| 
| tBodyGyroMeanZ                    |                               															| 
| tBodyGyroJerkMeanX                |                               															| 
| tBodyGyroJerkStdY                 |                               															| 
| tGravityAccMagMean                |                               															| 
| tBodyGyroMagMean                  |                               															| 
| fBodyAccMeanX                     |                               															| 
| fBodyAccStdY                      |                               															| 
| fBodyAccJerkMeanZ                 |                               															| 
| fBodyGyroMeanX                    |                               															| 
| fBodyGyroStdY                     |                               															| 
| fBodyBodyAccJerkMagMean           |                               															| 
| fBodyBodyGyroJerkMagMean			|                               															| 
| tBodyAccMeanY           			|                               															| 
| tBodyAccStdZ            			|                               															| 
| tGravityAccStdX         			|                               															| 
| tBodyAccJerkMeanY       			|                               															| 
| tBodyAccJerkStdZ        			|                               															| 
| tBodyGyroStdX           			|                               															| 
| tBodyGyroJerkMeanY      			|                               															| 
| tBodyGyroJerkStdZ       			|                               															| 
| tGravityAccMagStd       			|                               															| 
| tBodyGyroMagStd         			|                               															| 
| fBodyAccMeanY           			|                               															| 
| fBodyAccStdZ            			|                               															| 
| fBodyAccJerkStdX        			|                               															| 
| fBodyGyroMeanY          			|                               															| 
| fBodyGyroStdZ           			|                               															| 
| fBodyBodyAccJerkMagStd  			|                               															| 
| fBodyBodyGyroJerkMagStd 			|                               															| 
| tBodyAccMeanZ        				|                               															| 
| tGravityAccMeanX     				|                               															| 
| tGravityAccStdY      				|                               															| 
| tBodyAccJerkMeanZ    				|                               															| 
| tBodyGyroMeanX       				|                               															| 
| tBodyGyroStdY        				|                               															| 
| tBodyGyroJerkMeanZ   				|                               															| 
| tBodyAccMagMean      				|                               															| 
| tBodyAccJerkMagMean  				|                               															| 
| tBodyGyroJerkMagMean 				|                               															| 
| fBodyAccMeanZ        				|                               															| 
| fBodyAccJerkMeanX    				|                               															| 
| fBodyAccJerkStdY     				|                               															| 
| fBodyGyroMeanZ       				|                               															| 
| fBodyAccMagMean      				|                               															| 
| fBodyBodyGyroMagMean 				|                               															| 
| tBodyAccStdX        				|                               															| 
| tGravityAccMeanY    				|                               															| 
| tGravityAccStdZ     				|                               															| 
| tBodyAccJerkStdX    				|                               															| 
| tBodyGyroMeanY      				|                               															| 
| tBodyGyroStdZ       				|                               															| 
| tBodyGyroJerkStdX   				|                               															| 
| tBodyAccMagStd      				|                               															| 
| tBodyAccJerkMagStd  				|                               															| 
| tBodyGyroJerkMagStd 				|                               															| 
| fBodyAccStdX        				|                               															| 
| fBodyAccJerkMeanY   				|                               															| 
| fBodyAccJerkStdZ    				|                               															| 
| fBodyGyroStdX       				|                               															| 
| fBodyAccMagStd      				|                               															| 
| fBodyBodyGyroMagStd 				|                               															| 

### Data Format
