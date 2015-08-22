changeColumsName <- function(x) {
      #----------------------------------------------------------
      # function: changeColumsName
      #----------------------------------------------------------
      #input : x= data frame - merge test and train data
      #output: k= vector - columns label appropriately modified
      #----------------------------------------------------------
      n <- names(x)
      
      k <- str_replace(n,"tBody","timeDomain-Body")
      k <- str_replace(k,"fBody","frequencyDomain-Body")
      
      k <- str_replace(k,"tGravity","timeDomain-Gravity")
      k <- str_replace(k,"fGravity","frequencyDomain-Gravity")
      
      k <- str_replace(k,"-BodyAcc-","-Body-Accelerometer-")
      k <- str_replace(k,"-BodyAccJerk-","-Body-Accelerometer-Jerk-")
      k <- str_replace(k,"-BodyGyroJerk-","-Body-Gyroscope-Jerk-")
      k <- str_replace(k,"-BodyAccJerkMag-","-Body-Accelerometer-Jerk-Magnitude-")
      k <- str_replace(k,"-BodyGyroJerkMag-","-Body-Gyroscope-Jerk-Magnitude-")
      k <- str_replace(k,"-BodyAccMag-","-Body-Accelerometer-Magnitude-")
      k <- str_replace(k,"-BodyGyroMag-","-Body-Gyroscope-Magnitude-")
      k <- str_replace(k,"-BodyGyro-","-Body-Gyroscope-")
      
      k <- str_replace(k,"-GravityAcc-","-Gravity-Accelerometer-")
      k <- str_replace(k,"-GravityAccMag-","-Gravity-Accelerometer-Magnitude-")
      
      k <- str_replace(k,"-std","-stdDev")
      
      return(k)
      
}
