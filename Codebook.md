# UCI-HAR-Dataset_Summarized.txt - CodeBook

## Introduction
The aim of this codebook is to provide a full description of the variables of the UCI-HAR-Dataset. This file contains the pre-processed data collected from the accelerometers from the Samsung Galaxy S smartphone, based on the experiment carried out by the UCI.  

## Study Design
The data included in the file has been downloaded from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and processed by the script `run_analysis.R`. This script combines trainning and test data into one data set containing information about subjects and activities. See Readme.md for further information. All the values has been pre-processed, filtered and normalized using the euclidean norm. 
The dataset summarizes each original value calculating the average for each subject and activity.

## CodeBook

### 1: subject (integer)
This field has a number representing each of the subjects volunteers for the experimente an ranges from 1 to 30.

### 2: activity (character)
This field represents the activities performed by each of the subjects wearing the smartphone on the waist. This data was manually labeld based on the experiment video recordings. This field can contain one of the following values:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

### 3: tBodyAccMag_mean_avg (numeric)
Mean of the normalize time domain signal corresponding to the pre-processed body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 4: tBodyAccMag_std_avg (numeric)
Standard deviation of the normalize time domain signal corresponding to the pre-processed body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 5: tGravityAccMag_mean_avg (numeric)
Mean of the normalize time domain signal corresponding to the pre-processed gravity linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 6: tGravityAccMag_std_avg (numeric)
Standard deviation of the normalize time domain signal corresponding to the pre-processed gravity linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 7: tBodyAccJerkMag_mean_avg (numeric)
Mean of the normalize time domain signal corresponding to the pre-processed Jerk signals of the body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 8: tBodyAccJerkMag_std_avg (numeric)
Standard deviation of the normalize time domain signal corresponding to the pre-processed Jerk signals of the body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 9: tBodyGyroMag_mean_avg (numeric)
Mean of the normalize time domain signal corresponding to the pre-processed linear gyroscope magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 10: tBodyGyroMag_std_avg (numeric)
Standard deviation of the normalize time domain signal corresponding to the pre-processed gyroscope linear magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 11: tBodyGyroJerkMag_mean_avg (numeric)
Mean of the normalize time domain signal corresponding to the pre-processed Jerk signals of the gyroscope magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 


### 12: tBodyGyroJerkMag_std_avg (numeric)
Standard deviation of the normalize time domain signal corresponding to the pre-processed Jerk signals of the gyroscope magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 13: fBodyAccMag_mean_avg (numeric)
Mean of the normalize frequency domain (FFT) signal corresponding to the pre-processed body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 14: fBodyAccMag_std_avg (numeric)

Standard deviation of the normalize frequency domain (FFT) signal corresponding to the pre-processed body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 


### 15: fBodyBodyAccJerkMag_mean_avg (numeric)
Mean of the normalize frequency domain (FFT) signal corresponding to the pre-processed Jerk signals of the body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 16: fBodyBodyAccJerkMag_std_avg (numeric)
Standard deviation of the normalize frequency domain (FFT) signal corresponding to the pre-processed Jerk signals of the body linear acceleration magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units.

### 17: fBodyBodyGyroMag_mean_avg (numeric)
Mean of the normalize frequency domain (FFT) signal corresponding to the pre-processed linear gyroscope magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 


### 18: fBodyBodyGyroMag_std_avg (numeric)
Standard deviation of the normalize frequency domain (FFT) signal corresponding to the pre-processed gyroscope linear magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 19: fBodyBodyGyroJerkMag_mean_avg (numeric)
Mean of the normalize frequency domain (FFT) signal corresponding to the pre-processed Jerk signals of the gyroscope magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 

### 20: fBodyBodyGyroJerkMag_std_avg (numeric)
Standard deviation of the normalize frequency domain (FFT) signal corresponding to the pre-processed Jerk signals of the gyroscope magnitude. Because it is based on an euclidean normalized value, it ranges from -1 to 1 without units. 
