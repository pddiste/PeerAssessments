#READ.ME

##Peer Assessments - Getting and Cleaning Data Course
##August 22, 2015
####READ.ME prepared by P.D. Di Stefano (pierdomenico.distefano@fastwebnet.it)

#Remarks: 
* packages used:  dplyr, stringr.
* data sets: unzip of "getdata-projectfiles-UCI HAR Dataset.zip" nella directory "./UCI HAR Dataset". 


###Step 1: Read data
* nessun problema di RAM: i files selezionati occupano circa 80MB, il mio PC ha 8GB di RAM.

* lettura di tutti i files selezionati e caricamento nei seguenti data frame:
>*  input file: x_train.txt           --> data frame: x_train.txt
>*  input file: x_test.txt            --> data frame: x_test.txt
>*  input file: features.txt          --> data frame: header
>*  input file: subject_train.txt     --> data frame: subject_train (col.names="IDSubject")  
>*  input file: subject_test.txt      --> data frame: subject_test (col.names="IDSubject")
>*  input file: y_test.txt            --> data frame: y_test (col.names="IDActivity")  
>*  input file: y_train.txt           --> data frame: y_train (col.names="IDActivity")
>*  input file: activity_labels.txt   --> data frame: act (col.names=c("IDActivity","IDSubject")

*  i files delle directories "Inertial Signals" non vengono letti perchè le colonne non sono 
 chiaramente descritte nel file "features_info.txt" (vedi CodeBook.md). 

###Step 2: Verify consistency data
* verifica che numero colonne (misure) siano uguali tra x_test e x_train
* verifica che numero colonne delle features (561) siano uguali alle colonne di x_test e x_train 
* verifica che numero delle obs siano uguali tra x_train e subject_train 
* verifica che numero delle obs siano uguali tra x_test e subject_test
* verifica che numero delle obs delle y_test siano uguali a quelle di x_test
* verifica che numero delle obs delle y_train siano uguali a quelle di x_train
* verifica che numero delle obs di act (activity_labels) siano uguale a 6.  


###Step 3: Mean and std dev. colums (Peer Assessments Point 2.)
* operazioni eseguite su entrambi i df x_train e x_test
* non distinguo tra colonne con mean() o mean: sono comunque medie.
* Con grep seleziono solamente le colonne che contengono il pattern "mean|std"
* elimino anche le colonne con nome che contengono "BodyBody": non esiste descrizione di misure
  con tale nome nel file "features_info.txt"  

###Step 4:  Add ID activity
* operazioni eseguite su entrambi i df x_train e x_test
* cbind(y_t...., x_t....)

###Step 5:  Add Subject
* operazioni eseguite su entrambi i df x_train e x_test
* cbind(subject_t...., x_t....) 

###Step 6: Merge train and test data (Point 1.)
* row merge
* x <- rbind(x_train, x_test)
 
###Step 7: descriptive activity (Point 3.)
* x <- merge(x, act, by="IDActivity")
 
###Step 8: labeling (Point 4.)
* replace nomi colonne con descrizioni estese
* str_replace utilizzata più volte con sostituzione delle stringhe:
>* "t..."       replace with  "timeDomain..."
>* "f..."       replace with  "frequencyDomain..."
>* "...Acc..."  replace with  "...Accelerometer..."  
>* "...Gyro..." replace with  "...Gyroscope..."
>* "...Mag..."  replace with  "...Magnitude..."
>* "...std..."  replace with  "...stdDev..."
                            
###Step 9: tyde dataset (Point 5.)
* escludo IDActivity
* tidy_data <- x %>% group_by(IDSubject, Activity) %>% summarise_each(funs(mean)) %>% select(-IDActivity)
