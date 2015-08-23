#READ.ME

##Peer Assessments - Getting and Cleaning Data Course
##August 22, 2015
####READ.ME prepared by P.D. Di Stefano (pierdomenico.distefano@fastwebnet.it)

#Remarks: 
* packages used:  dplyr, stringr.
* data sets: unzip of "getdata-projectfiles-UCI HAR Dataset.zip" in the directory "./UCI HAR Dataset". 


###Step 1: Read data
* no problem of RAM: the selected files are about 80MB, my PC has 8GB RAM.

* reading all the selected files and loading in the following data frame:
>*  input file: x_train.txt           --> data frame: x_train.txt
>*  input file: x_test.txt            --> data frame: x_test.txt
>*  input file: features.txt          --> data frame: header
>*  input file: subject_train.txt     --> data frame: subject_train (col.names="IDSubject")  
>*  input file: subject_test.txt      --> data frame: subject_test (col.names="IDSubject")
>*  input file: y_test.txt            --> data frame: y_test (col.names="IDActivity")  
>*  input file: y_train.txt           --> data frame: y_train (col.names="IDActivity")
>*  input file: activity_labels.txt   --> data frame: act (col.names=c("IDActivity","IDSubject")

*  files in directories "Inertial Signals" aren't read because the columns are not
  clearly described in the file "features_info.txt" (rif. CodeBook.md). 

###Step 2: Verify consistency data
* number of columns (measures) are equal between x_test e x_train
* number of columns of df features (561) are equal to the columns of x_test and x_train 
* number of obs are equal between x_train and subject_train 
* number of obs are equal between x_test eand subject_test
* number of obs of y_test are equal to obs of x_test
* number of obs of y_train are equal to obs of x_train
* number of obs of act (activity_labels) are equal to 6.  


###Step 3: Mean and std dev. colums (Peer Assessments Point 2.)
* operations performed on both x_train e x_test
* I don't distinguish between columns with mean () or mean: they are mean.
* "grep" function select only the columns that contain the pattern "mean|std"
* I delete the columns with name containing "BodyBody": there is no description of measures
   by that name in the file "features_info.txt"  

###Step 4:  Add ID activity
* operations performed on both x_train e x_test
* cbind(y_t...., x_t....)

###Step 5:  Add Subject
* operations performed on both x_train e x_test
* cbind(subject_t...., x_t....) 

###Step 6: Merge train and test data (Point 1.)
* row merge
* x <- rbind(x_train, x_test)
 
###Step 7: descriptive activity (Point 3.)
* x <- merge(x, act, by="IDActivity")
 
###Step 8: labeling (Point 4.)
<<<<<<< HEAD
* replace existing column names with extended descriptions
* "str_replace" function used in an iterative way:
=======
* replace nomi colonne con descrizioni estese
* str_replace utilizzata più volte con sostituzione delle stringhe:
>>>>>>> origin/master

>* 't...'       replace with  'timeDomain...'
>* 'f...'       replace with  'frequencyDomain...'
>* '...Acc...'  replace with  '...Accelerometer...'  
>* '...Gyro...' replace with  '...Gyroscope...'
>* '...Mag...'  replace with  '...Magnitude...'
>* '...std...'  replace with  '...stdDev...'
                            
###Step 9: tyde dataset (Point 5.)
* delete the column IDActivity
* tidy_data <- x %>% group_by(IDSubject, Activity) %>% summarise_each(funs(mean)) %>% select(-IDActivity)
