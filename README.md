#READ.ME
##Peer Assessments - Getting and Cleaning Data Course
##pierdomenico.distefano@fastwebnet.it

###Remarks: 
* packages used:  dplyr, stringr.
* data sets: unzip of "getdata-projectfiles-UCI HAR Dataset.zip" in "./UCI HAR Dataset". 

###Step 1: Read data
* nessun problema di RAM: i files selezionati occupano circa 80MB, il mio PC ha 8GB di RAM.
* lettura di tutti i files selezionati e caricamento nei seguenti data frame:
**  input file: x_train.txt          --> data frame: x_train.txt
**  input file: x_test.txt           --> data frame: x_test.txt
**  input file: features.txt         --> data frame: header
**  input file: subject_train.txt    --> data frame: subject_train  
**  input file: subject_test.txt     --> data frame: subject_test
**  input file: y_test.txt           --> data frame: y_test  
**  input file: y_train.txt          --> data frame: y_train
**  input file: activity_labels.txt  --> data frame: act  
* i files delle directories "Inertial Signals" non vengono letti perchè le colonne non sono 
* chiaramente descritte nel file "features_info.txt" (vedi CodeBook.md). 

###Step 2: Verify data

###Step 3: mean and std dev. colums (Peer Assessments Point 2.)

###Step 4:  Add ID activity

###Step 5:  Add Subject 

###Step 6: merge train and test data (Point 1.)
 
###Step 7: descriptive activity (Point 3.)
 
###Step 8: labeling (Point 4.)
 
###Step 9: tyde dataset (Point 5.)