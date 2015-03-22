# Getting and Cleaning Data Course Project

    Course Code: getdata-012
	User: gonzarodri@gmail.com

This project contains the tidy datasets, scripts and codebooks as requested by the programming assignment statement. Details about the project are outlined below.


## Getting the data
The raw datasets used for this project was downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ) and consist of a zip file containing training and test data for the Human Activity Recognition collected from the accelerometers from the Samsung Galaxy S smartphone.

## Cleaning Data
As requested, a script called `run_analysis.R` has been created to reproduce the process of cleaning, merging and summarizing the datasets, as well as a way to document the approach thas has been implemented. The script has been coded keeping in mind a well understanding by the reviewers. So, each step has been carefully documented. 

The script can be run using the following command:

	source("run_analysis.R")

## How the script works
The script provided perform the following secuence of tasks:

###1. Unzip Data File
The script assumes that the file `UCI HAR Dataset.zip` is in the root folder of the project. The content of the zip file is extracted into the data directory. This operation is performed only if the data directory does not exist. 

###2. Read Features Table
The feature table is read in order to select the columns requiered by the project statement. Column names are tidied up removing parenthesis and replacing the minus sign by underscores.

###3. Filter Features
A new features table is created, filtering the columns requested. Note that by default, de columns that end with "mean" and "std" are selected. However it is possible to select all the columns that contains the words "mean" and "std" in any part of the name by setting the flag `includeAllMeanAndStd` to `TRUE` in the configuration section at the biginning of the script. 

###4. Read Activities
The activities table is read in order to replace the activities codes by descriptive names. 

###5. Read Test Data
The test data from `X_test.txt`, `y_test.txt`, `subject_test.txt` is loaded into three tempory tables. At this stage, the features are filtered, and activity names are used instead of codes. Finally the three tables are combined into one test data frame.

###6. Read Training Data
The training data from `X_train.txt`, `y_train.txt`, `subject_train.txt` is loaded into three tempory tables. At this stage, the features are filtered, and activity names are used instead of codes. Finally the three tables are combined into one training data frame.

###7. Combine Training and Test Data
The two dataframes created in steps 5 and 6 are combined to form the resul data set which is saved into the `UCI_HAR_Dataset.txt` in the working folder.

### 8. Summarize and calculate Average of each variable
Using the resulting data set created in step 7, a new data set is created, grouping activity and subject and summarizing the mean of each variable. To do this operation, the script takes advantage of the interpreted nature of R and uses a dynamic created statement that creates a field name for each variable adding the suffix `_avg` and calculating the mean. The resulting data set is saved as  `UCI_HAR_Dataset_summarized.txt`
 

##Reading the resulting datasets

The resulting datasets can be read usin the following statements:

	# Read Complete dataset
	UCI_HAR_Dataset <- read.table("UCI_HAR_Dataset.txt", header=TRUE)

	# Read Summarized Dataset
	UCI_HAR_Dataset_Summarized <- read.table("UCI_HAR_Dataset_Summarized.txt", header=TRUE)