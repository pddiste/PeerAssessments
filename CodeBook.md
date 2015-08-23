#CodeBook

#Peer Assessments - Getting and Cleaning Data Course
##August 22, 2015
##CodeBook prepared by P.D. Di Stefano (pierdomenico.distefano@fastwebnet.it)

##Remarks:
* data sets: unzip of "getdata-projectfiles-UCI HAR Dataset.zip".
* files selected to assessments:
* 
>* x_train.txt:  measurement training data, obs= 7352, columns= 72            
>* x_test.txt:  measurement test data, obs= 2947, colums= 72             
>* features.txt:  colums names, obs=561, colums=2         
>* subject_train.txt:  subject in training measurements, obs= 7352, columns= 1      
>* subject_test.txt:  subject in test measurements, obs= 2947, columns= 1      
>* y_test.txt:  activity number relative to test measurements, obs= 2947, columns= 1            
>* y_train.txt:  activity number relative to training measurements, obs= 7352, columns= 1          
>* activity_labels.txt: activity labels, obs= 6, columns= 2

* files in the directories "Inertial Signals" are not considered in the analysis because
the measurements (128 columns for each file where 128 are sampling at 50HZ 
 namely 1/50HZ * 2,56sec = 128) seem to have already been processed in the measurements file x_train e x_test.
* tidy data set columns names have been extended with the following replacement strings:

>* "t..."       replace with  "timeDomain..." 
>* "f..."       replace with  "frequencyDomain..."
>* "...Acc..."  replace with  "...Accelerometer..."  
>* "...Gyro..." replace with  "...Gyroscope..."
>* "...Mag..."  replace with  "...Magnitude..."
>* "...std..."  replace with  "...stdDev..."       

* the columns with name containing "BodyBody" are been discarded: there is no description of relative measures in the file "features_info.txt"
 
##Columns tidy data set (df= "tidy_data")

Column name ---> Description
-----------      -----------
                                                 
*  1. IDSubject --->    Subject number identification   
*  2. Activity --->      Activity label
*  3. timeDomain-Body-Accelerometer-mean()-X   --->  Mean Body acceleration vs Axis X - time
*  4. timeDomain-Body-Accelerometer-mean()-Y   --->  Mean Body acceleration vs Axis Y - time
*  5. timeDomain-Body-Accelerometer-mean()-Z   --->  Mean Body acceleration vs Axis Z - time
*  6. timeDomain-Body-Accelerometer-stdDev()-X   --->    Standard deviation Body acceleration vs Axis X - time
*  7. timeDomain-Body-Accelerometer-stdDev()-Y    --->   Standard deviation Body acceleration vs Axis Y - time
*  8. timeDomain-Body-Accelerometer-stdDev()-Z    --->   Standard deviation Body acceleration vs Axis Z - time
*  9. timeDomain-Gravity-Accelerometer-mean()-X   --->   Mean gravity component acceleration vs Axis X - time
* 10. timeDomain-Gravity-Accelerometer-mean()-Y   --->   Mean gravity component acceleration vs Axis Y - time
* 11. timeDomain-Gravity-Accelerometer-mean()-Z    --->  Mean gravity component acceleration vs Axis Z - time
* 12. timeDomain-Gravity-Accelerometer-stdDev()-X  --->  Standard deviation gravity component acceleration vs Axis X - time
* 13. timeDomain-Gravity-Accelerometer-stdDev()-Y   ---> Standard deviation gravity component acceleration vs Axis Y - time
* 14. timeDomain-Gravity-Accelerometer-stdDev()-Z   ---> Standard deviation gravity component acceleration vs Axis Z - time
* 15. timeDomain-Body-Accelerometer-Jerk-mean()-X  --->  Mean Body acceleration with jerk vs Axis X - time
* 16. timeDomain-Body-Accelerometer-Jerk-mean()-Y   ---> Mean Body acceleration with jerk vs Axis Y - time
* 17. timeDomain-Body-Accelerometer-Jerk-mean()-Z   ---> Mean Body acceleration with jerk vs Axis Z - time
* 18. timeDomain-Body-Accelerometer-Jerk-stdDev()-X --->   Standard deviation Body acceleration with jerk vs Axis X - time
* 19. timeDomain-Body-Accelerometer-Jerk-stdDev()-Y --->   Standard deviation Body acceleration with jerk vs Axis Y - time
* 20. timeDomain-Body-Accelerometer-Jerk-stdDev()-Z --->    Standard deviation Body acceleration with jerk vs Axis Z - time
* 21. timeDomain-Body-Gyroscope-mean()-X   --->    Mean Body gyroscope angle vs Axis X - time
* 22. timeDomain-Body-Gyroscope-mean()-Y   --->    Mean Body gyroscope angle vs Axis Y - time
* 23. timeDomain-Body-Gyroscope-mean()-Z   --->   Mean Body gyroscope angle vs Axis Z - time
* 24. timeDomain-Body-Gyroscope-stdDev()-X   --->    Standard deviation Body gyroscope angle vs Axis X - time
* 25. timeDomain-Body-Gyroscope-stdDev()-Y   --->    Standard deviation Body gyroscope angle vs Axis Y - time
* 26. timeDomain-Body-Gyroscope-stdDev()-Z   --->    Standard deviation Body gyroscope angle vs Axis Y - time
* 27. timeDomain-Body-Gyroscope-Jerk-mean()-X   ---> Mean Body gyroscope angle with jerk vs Axis X - time
* 28. timeDomain-Body-Gyroscope-Jerk-mean()-Y   ---> Mean Body gyroscope angle with jerk vs Axis Y - time
* 29. timeDomain-Body-Gyroscope-Jerk-mean()-Z   ---> Mean Body gyroscope angle with jerk vs Axis Z - time
* 30. timeDomain-Body-Gyroscope-Jerk-stdDev()-X  --->  Standard deviation Body gyroscope angle with jerk vs Axis X - time
* 31. timeDomain-Body-Gyroscope-Jerk-stdDev()-Y  --->  Standard deviation Body gyroscope angle with jerk vs Axis Y - time
* 32. timeDomain-Body-Gyroscope-Jerk-stdDev()-Z  --->  Standard deviation Body gyroscope angle with jerk vs Axis Z - time
* 33. timeDomain-Body-Accelerometer-Magnitude-mean() --->    Mean Body acceleration total magnitude (Euler norm)  - time
* 34. timeDomain-Body-Accelerometer-Magnitude-stdDev() --->   Standard deviation Body acceleration total magnitude (Euler norm)  - time
* 35. timeDomain-Gravity-Accelerometer-Magnitude-mean() --->   Mean Body gravity component acceleration total magnitude (Euler norm)  - time
* 36. timeDomain-Gravity-Accelerometer-Magnitude-stdDev() ---> Standard deviation Body gravity component acceleration total magnitude (Euler norm)  - time
* 37. timeDomain-Body-Accelerometer-Jerk-Magnitude-mean() ---> Mean Body gravity component acceleration total magnitude with jerk (Euler norm)  - time
* 38. timeDomain-Body-Accelerometer-Jerk-Magnitude-stdDev() ---> Standard deviation Body acceleration total magnitude with jerk (Euler norm)  - time 
* 39. timeDomain-Body-Gyroscope-Magnitude-mean() --->  Mean Body gyroscope angle total magnitude (Euler norm)  - time
* 40. timeDomain-Body-Gyroscope-Magnitude-stdDev() --->    Standard deviation Body gyroscope angle total magnitude (Euler norm)  - time
* 41. timeDomain-Body-Gyroscope-Jerk-Magnitude-mean() --->  Mean Body gyroscope angle total magnitude with jerk (Euler norm)  - time
* 42. timeDomain-Body-Gyroscope-Jerk-Magnitude-stdDev() --->   Standard deviation Body gyroscope angle total magnitude with jerk (Euler norm)  - time
* 43. frequencyDomain-Body-Accelerometer-mean()-X ---> Mean Body acceleration vs Axis X - frequency domain
* 44. frequencyDomain-Body-Accelerometer-mean()-Y ---> Mean Body acceleration vs Axis Y - frequency domain
* 45. frequencyDomain-Body-Accelerometer-mean()-Z ---> Mean Body acceleration vs Axis Z - frequency domain
* 46. frequencyDomain-Body-Accelerometer-stdDev()-X --->   Standard deviation Body acceleration vs Axis X - frequency domain
* 47. frequencyDomain-Body-Accelerometer-stdDev()-Y --->   Standard deviation Body acceleration vs Axis Y - frequency domain
* 48. frequencyDomain-Body-Accelerometer-stdDev()-Z --->   Standard deviation Body acceleration vs Axis Z - frequency domain
* 49. frequencyDomain-Body-Accelerometer-meanFreq()-X --->  Mean frequency Body acceleration vs Axis X - frequency domain
* 50. frequencyDomain-Body-Accelerometer-meanFreq()-Y --->  Mean frequency Body acceleration vs Axis y - frequency domain
* 51. frequencyDomain-Body-Accelerometer-meanFreq()-Z --->  Mean frequency Body acceleration vs Axis Z - frequency domain
* 52. frequencyDomain-Body-Accelerometer-Jerk-mean()-X --->    Mean Body acceleration with jerk vs Axis X - frequency domain
* 53. frequencyDomain-Body-Accelerometer-Jerk-mean()-Y --->    Mean Body acceleration with jerk vs Axis Y - frequency domain
* 54. frequencyDomain-Body-Accelerometer-Jerk-mean()-Z --->    Mean Body acceleration with jerk vs Axis Z - frequency domain
* 55. frequencyDomain-Body-Accelerometer-Jerk-stdDev()-X --->  Standard deviation Body acceleration with jerk vs Axis X - frequency domain
* 56. frequencyDomain-Body-Accelerometer-Jerk-stdDev()-Y --->  Standard deviation Body acceleration with jerk vs Axis Y - frequency domain
* 57. frequencyDomain-Body-Accelerometer-Jerk-stdDev()-Z --->  Standard deviation Body acceleration with jerk vs Axis Z - frequency domain
* 58. frequencyDomain-Body-Accelerometer-Jerk-meanFreq()-X  --->  Mean frequency Body acceleration with jerk vs Axis X - frequency domain
* 59. frequencyDomain-Body-Accelerometer-Jerk-meanFreq()-Y  --->  Mean frequency Body acceleration with jerk vs Axis Y - frequency domain
* 60. frequencyDomain-Body-Accelerometer-Jerk-meanFreq()-Z  --->  Mean frequency Body acceleration with jerk vs Axis Z - frequency domain
* 61. frequencyDomain-Body-Gyroscope-mean()-X   ---> Mean Body gyroscope angle vs Axis X - frequency domain
* 62. frequencyDomain-Body-Gyroscope-mean()-Y   ---> Mean Body gyroscope angle vs Axis Y - frequency domain
* 63. frequencyDomain-Body-Gyroscope-mean()-Z   ---> Mean Body gyroscope angle vs Axis Z - frequency domain
* 64. frequencyDomain-Body-Gyroscope-stdDev()-X  --->   Standard deviation Body gyroscope angle vs Axis X - frequency domain
* 65. frequencyDomain-Body-Gyroscope-stdDev()-Y  --->  Standard deviation Body gyroscope angle vs Axis Y - frequency domain
* 66. frequencyDomain-Body-Gyroscope-stdDev()-Z  --->  Standard deviation Body gyroscope angle vs Axis Z - frequency domain
* 67. frequencyDomain-Body-Gyroscope-meanFreq()-X ---> Mean frequency gyroscope angle vs Axis X - frequency domain
* 68. frequencyDomain-Body-Gyroscope-meanFreq()-Y ---> Mean frequency gyroscope angle vs Axis Y - frequency domain
* 69. frequencyDomain-Body-Gyroscope-meanFreq()-Z ---> Mean frequency gyroscope angle vs Axis Z - frequency domain
* 70. frequencyDomain-Body-Accelerometer-Magnitude-mean() ---> Mean Body acceleration total magnitude (Euler norm)  - frequency domain
* 71. frequencyDomain-Body-Accelerometer-Magnitude-stdDev()--->  Mean Body acceleration total magnitude (Euler norm)  - frequency domain
* 72. frequencyDomain-Body-Accelerometer-Magnitude-meanFreq()  --->  Mean frequency Body acceleration total magnitude (Euler norm)  - frequency domain
