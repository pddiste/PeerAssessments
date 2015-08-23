#--------
#CodeBook
#--------
#Peer Assessments - Getting and Cleaning Data Course
##August 22, 2015
##CodeBook prepared by P.D. Di Stefano (pierdomenico.distefano@fastwebnet.it)

##Remarks:
* data sets: unzip of "getdata-projectfiles-UCI HAR Dataset.zip".
* file selezionati nell'assessments:
>* x_train.txt:  measurement training data, obs= 7352, columns= 72            
>* x_test.txt:  measurement test data, obs= 2947, colums= 72             
>* features.txt:  colums names, obs=561, colums=2         
>* subject_train.txt:  subject in training measurements, obs= 7352, columns= 1      
>* subject_test.txt:  subject in test measurements, obs= 2947, columns= 1      
>* y_test.txt:  activity number relative to test measurements, obs= 2947, columns= 1            
>* y_train.txt:  activity number relative to training measurements, obs= 7352, columns= 1          
>* activity_labels.txt: activity labels, obs= 6, columns= 2
* i files delle directories "Inertial Signals" non vengono considerati nell'analisi perchè 
 le misurazioni (128 colonne per ogni file dove 128 sono i campionamenti a 50HZ 
 ossia 1/50HZ * 2,56sec = 128) sembrano già elaborate nelle misurazioni dei filex_train e x_test.
* i nomi delle colonne del tidy data set sono stati estesi con le sequenti sostituzione delle stringhe:
>* "t..."       replace with  "timeDomain..." 
>* "f..."       replace with  "frequencyDomain..."
>* "...Acc..."  replace with  "...Accelerometer..."  
>* "...Gyro..." replace with  "...Gyroscope..."
>* "...Mag..."  replace with  "...Magnitude..."
>* "...std..."  replace with  "...stdDev..."       
 
##Columns tidy data set (df= "tidy_data")
* IDSubject                  IDSubject 
* Activity                   Activity 
* tBodyAcc-mean()-X          timeDomain-Body-Accelerometer-mean()-X 
* tBodyAcc-mean()-Y          timeDomain-Body-Accelerometer-mean()-Y 
* tBodyAcc-mean()-Z          timeDomain-Body-Accelerometer-mean()-Z 
* tBodyAcc-std()-X           timeDomain-Body-Accelerometer-stdDev()-X 
* tBodyAcc-std()-Y           timeDomain-Body-Accelerometer-stdDev()-Y 
* tBodyAcc-std()-Z           timeDomain-Body-Accelerometer-stdDev()-Z 
* tGravityAcc-mean()-X       timeDomain-Gravity-Accelerometer-mean()-X 
* tGravityAcc-mean()-Y       timeDomain-Gravity-Accelerometer-mean()-Y 
* tGravityAcc-mean()-Z       timeDomain-Gravity-Accelerometer-mean()-Z 
* tGravityAcc-std()-X        timeDomain-Gravity-Accelerometer-stdDev()-X 
* tGravityAcc-std()-Y        timeDomain-Gravity-Accelerometer-stdDev()-Y 
* tGravityAcc-std()-Z        timeDomain-Gravity-Accelerometer-stdDev()-Z 
* tBodyAccJerk-mean()-X      timeDomain-Body-Accelerometer-Jerk-mean()-X 
* tBodyAccJerk-mean()-Y      timeDomain-Body-Accelerometer-Jerk-mean()-Y 
* tBodyAccJerk-mean()-Z      timeDomain-Body-Accelerometer-Jerk-mean()-Z 
* tBodyAccJerk-std()-X       timeDomain-Body-Accelerometer-Jerk-stdDev()-X 
* tBodyAccJerk-std()-Y       timeDomain-Body-Accelerometer-Jerk-stdDev()-Y 
* tBodyAccJerk-std()-Z       timeDomain-Body-Accelerometer-Jerk-stdDev()-Z 
* tBodyGyro-mean()-X         timeDomain-Body-Gyroscope-mean()-X 
* tBodyGyro-mean()-Y         timeDomain-Body-Gyroscope-mean()-Y 
* tBodyGyro-mean()-Z         timeDomain-Body-Gyroscope-mean()-Z 
* tBodyGyro-std()-X          timeDomain-Body-Gyroscope-stdDev()-X 
* tBodyGyro-std()-Y          timeDomain-Body-Gyroscope-stdDev()-Y 
* tBodyGyro-std()-Z          timeDomain-Body-Gyroscope-stdDev()-Z 
* tBodyGyroJerk-mean()-X     timeDomain-Body-Gyroscope-Jerk-mean()-X 
* tBodyGyroJerk-mean()-Y     timeDomain-Body-Gyroscope-Jerk-mean()-Y 
* tBodyGyroJerk-mean()-Z     timeDomain-Body-Gyroscope-Jerk-mean()-Z 
* tBodyGyroJerk-std()-X      timeDomain-Body-Gyroscope-Jerk-stdDev()-X 
* tBodyGyroJerk-std()-Y      timeDomain-Body-Gyroscope-Jerk-stdDev()-Y 
* tBodyGyroJerk-std()-Z      timeDomain-Body-Gyroscope-Jerk-stdDev()-Z 
* tBodyAccMag-mean()         timeDomain-Body-Accelerometer-Magnitude-mean() 
* tBodyAccMag-std()          timeDomain-Body-Accelerometer-Magnitude-stdDev() 
* tGravityAccMag-mean()      timeDomain-Gravity-Accelerometer-Magnitude-mean() 
* tGravityAccMag-std()       timeDomain-Gravity-Accelerometer-Magnitude-stdDev() 
* tBodyAccJerkMag-mean()     timeDomain-Body-Accelerometer-Jerk-Magnitude-mean() 
* tBodyAccJerkMag-std()      timeDomain-Body-Accelerometer-Jerk-Magnitude-stdDev() 
* tBodyGyroMag-mean()        timeDomain-Body-Gyroscope-Magnitude-mean() 
* tBodyGyroMag-std()         timeDomain-Body-Gyroscope-Magnitude-stdDev() 
* tBodyGyroJerkMag-mean()    timeDomain-Body-Gyroscope-Jerk-Magnitude-mean() 
* tBodyGyroJerkMag-std()     timeDomain-Body-Gyroscope-Jerk-Magnitude-stdDev() 
* fBodyAcc-mean()-X          frequencyDomain-Body-Accelerometer-mean()-X 
* fBodyAcc-mean()-Y          frequencyDomain-Body-Accelerometer-mean()-Y 
* fBodyAcc-mean()-Z          frequencyDomain-Body-Accelerometer-mean()-Z 
* fBodyAcc-std()-X           frequencyDomain-Body-Accelerometer-stdDev()-X 
* fBodyAcc-std()-Y           frequencyDomain-Body-Accelerometer-stdDev()-Y 
* fBodyAcc-std()-Z           frequencyDomain-Body-Accelerometer-stdDev()-Z 
* fBodyAcc-meanFreq()-X      frequencyDomain-Body-Accelerometer-meanFreq()-X 
* fBodyAcc-meanFreq()-Y      frequencyDomain-Body-Accelerometer-meanFreq()-Y 
* fBodyAcc-meanFreq()-Z      frequencyDomain-Body-Accelerometer-meanFreq()-Z 
* fBodyAccJerk-mean()-X      frequencyDomain-Body-Accelerometer-Jerk-mean()-X 
* fBodyAccJerk-mean()-Y      frequencyDomain-Body-Accelerometer-Jerk-mean()-Y 
* fBodyAccJerk-mean()-Z      frequencyDomain-Body-Accelerometer-Jerk-mean()-Z 
* fBodyAccJerk-std()-X       frequencyDomain-Body-Accelerometer-Jerk-stdDev()-X 
* fBodyAccJerk-std()-Y       frequencyDomain-Body-Accelerometer-Jerk-stdDev()-Y 
* fBodyAccJerk-std()-Z       frequencyDomain-Body-Accelerometer-Jerk-stdDev()-Z 
* fBodyAccJerk-meanFreq()-X  frequencyDomain-Body-Accelerometer-Jerk-meanFreq()-X 
* fBodyAccJerk-meanFreq()-Y  frequencyDomain-Body-Accelerometer-Jerk-meanFreq()-Y 
* fBodyAccJerk-meanFreq()-Z  frequencyDomain-Body-Accelerometer-Jerk-meanFreq()-Z 
* fBodyGyro-mean()-X         frequencyDomain-Body-Gyroscope-mean()-X 
* fBodyGyro-mean()-Y         frequencyDomain-Body-Gyroscope-mean()-Y 
* fBodyGyro-mean()-Z         frequencyDomain-Body-Gyroscope-mean()-Z 
* fBodyGyro-std()-X          frequencyDomain-Body-Gyroscope-stdDev()-X 
* fBodyGyro-std()-Y          frequencyDomain-Body-Gyroscope-stdDev()-Y 
* fBodyGyro-std()-Z          frequencyDomain-Body-Gyroscope-stdDev()-Z 
* fBodyGyro-meanFreq()-X     frequencyDomain-Body-Gyroscope-meanFreq()-X 
* fBodyGyro-meanFreq()-Y     frequencyDomain-Body-Gyroscope-meanFreq()-Y 
* fBodyGyro-meanFreq()-Z     frequencyDomain-Body-Gyroscope-meanFreq()-Z 
* fBodyAccMag-mean()         frequencyDomain-Body-Accelerometer-Magnitude-mean() 
* fBodyAccMag-std()          frequencyDomain-Body-Accelerometer-Magnitude-stdDev() 
* fBodyAccMag-meanFreq()     frequencyDomain-Body-Accelerometer-Magnitude-meanFreq()