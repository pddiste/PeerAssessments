run_analysis <- function() {
      
      #---------------------------------------------
      # Read data
      #---------------------------------------------
      #read measurements
      x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
      x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
      
      #read header file (features.txt)
      header <- read.table("./UCI HAR Dataset/features.txt", sep=" ", header = FALSE)
      namesHeader <- as.vector(header$V2)  #vector of columns names of 561-feature
      
      #read subject
      subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                              col.names=c("IDSubject"), header = FALSE)
      subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                              col.names=c("IDSubject"), header = FALSE)
     
      #read activity
      y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", 
                           col.names=c("IDActivity"), header = FALSE)
      y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", 
                           col.names=c("IDActivity"),header = FALSE)
      
      #read activity labels
      act <- read.table("./UCI HAR Dataset/activity_labels.txt", sep=" ", 
                        col.names=c("IDActivity", "Activity"), header = FALSE)
      
      
      #---------------------------------------------
      # Verify data
      #---------------------------------------------
      num_x_test <- dim(x_test)           #num. obs/columns x_test
      num_x_train <- dim(x_train)         #num. obs/columns x_train
      num_sub_test <- dim(subject_test)   #num. obs/columns subject_test
      num_sub_train <- dim(subject_train) #num. obs/columns subject_train
      num_y_test <- dim(y_test)           #num. obs/columns y_test
      num_y_train <- dim(y_train)         #num. obs/columns y_train
      num_activity <- dim(act)            #num. obs/columns activity
      
      if ((num_x_test[2] != num_x_train[2])) {
            message("ERR01: number of columns x_test and x_train not equal")
            rc <- -1
            return(rc)
      }
      if ((num_x_test[1] != num_sub_test[1]) | 
          (num_x_train[1] != num_sub_train[1])) {
            message("ERR02: number of obs test/train and relative subject obs not equal")
            rc <- -2
            return(rc)
      }
      
      if ((length(namesHeader) != num_x_test[2]) |
          (length(namesHeader) != num_x_train[2]) ) {
            message("ERR03: number of columns test/train and relative header not equal")
            return(-3)      
      }
      
      if ((num_y_test[1] != num_x_test[1]) |
          (num_y_train[1] != num_x_train[1]) ) {
            message("ERR04: number of obs test/train and relative activity obs not equal")
            return(-4)      
      }
      
      if (6L != num_activity[1]) {
            message("ERR05: number of activity not equal to 6")
            return(-5)      
      }
     
      #---------------------------------------------
      # Point 2. : mean and std dev. colums
      #---------------------------------------------
      #add columns names to test and train data
      names(x_test) <- namesHeader
      names(x_train) <- namesHeader
      
      #vector of  mean and std deviation columns (all mean and std deviation)
      var <- grep("mean|std", header$V2 , ignore.case = FALSE, value = TRUE)
     
      #only obs with mean and std deviation columns (point 2.)
      x_test <- subset(x_test, select = var)
      x_train <- subset(x_train, select = var)
      
      
      #---------------------------------------------
      # Add ID activity
      #---------------------------------------------
      x_train <- cbind(y_train, x_train)
      x_test <- cbind(y_test, x_test)
      
      
      #---------------------------------------------
      # Add Subject 
      #---------------------------------------------
      x_train <- cbind(subject_train, x_train)
      x_test <- cbind(subject_test, x_test)
      

      #---------------------------------------------
      # Point 1. mod. : merge train and test data
      #---------------------------------------------
      x <- rbind(x_train, x_test)
      
      
      #---------------------------------------------
      # Point 3.: descriptive activity
      #---------------------------------------------
      x <- arrange(x, IDActivity)
      x <- merge(x, act, by="IDActivity")
      
    
      #---------------------------------------------
      # Point 4.: labeling
      #---------------------------------------------
      l <- changeColumsName(x)
      names(x) <- l
      
      
      #---------------------------------------------
      # Point 5.: tyde dataset
      #---------------------------------------------
      tidy_data <- x %>% 
                  group_by(IDSubject, Activity) %>% 
                  summarise_each(funs(mean)) %>% select(-IDActivity)
      
      
      return(tidy_data)

}
