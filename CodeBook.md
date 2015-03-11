The code book
===========

## Study design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##Code book
The resulting dataset contains 180 rows of 81 variables including activity and subject (see section Variables).

###Variables
1. activity. It's a categorical variable. There are 6 possible activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2. subject. The subject who performed the activity for each window sample. Its range is from 1 to 30.
3. The other variables in the data set are  mean values for each activity and each subject. All of them are continuous.
                         "tBodyAcc.mean...X"              
 [4] "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"               "tGravityAcc.mean...X"           
 [7] "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"          
[10] "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"             
[13] "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"         
[16] "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."             
[19] "tGravityAccMag.mean.."           "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."            
[22] "tBodyGyroJerkMag.mean.."         "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
[25] "fBodyAcc.mean...Z"               "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[28] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
[31] "fBodyAccJerk.mean...Z"           "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
[34] "fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
[37] "fBodyGyro.mean...Z"              "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[40] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."         
[43] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
[46] "fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.."
[49] "tBodyAcc.std...X"                "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
[52] "tGravityAcc.std...X"             "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
[55] "tBodyAccJerk.std...X"            "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[58] "tBodyGyro.std...X"               "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
[61] "tBodyGyroJerk.std...X"           "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[64] "tBodyAccMag.std.."               "tGravityAccMag.std.."            "tBodyAccJerkMag.std.."          
[67] "tBodyGyroMag.std.."              "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
[70] "fBodyAcc.std...Y"                "fBodyAcc.std...Z"                "fBodyAccJerk.std...X"           
[73] "fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
[76] "fBodyGyro.std...Y"               "fBodyGyro.std...Z"               "fBodyAccMag.std.."              
[79] "fBodyBodyAccJerkMag.std.."       "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."  

###Data transformations
1. The training and the test sets were merged into one full data set with appropriate column names.
2. The measurements on the mean and standard deviation for each measurement were extracted via "grep" function.
3. Then created the resulting independent tidy data set with the average of each variable for each activity and each subject.