library(dplyr)

# Flag that determines whether to include all columns that include "mean" and "std" or just those which ends with "mean()" and "std()"
includeAllMeanAndStd <- FALSE

# Unzip file containing the data sets in the ./data folder
if (!file.exists("./data")) {
    unzip(zipfile = "UCI HAR Dataset.zip", exdir = "./data")
}

# Get Features Table
# Columns: fea.id, fea.name
features <- read.table("./data/UCI HAR Dataset/features.txt", col.names = c("fea.id","fea.name"), stringsAsFactors = FALSE)
# Tidy Column Names
features$fea.name <- gsub("\\(\\)","",features$fea.name)
features$fea.name <- gsub("-","_",features$fea.name)
# features$fea.name <- gsub("Mag","",features$fea.name)

# Creates a table containing only the selected columns (Columns ending with "mean()" and "std()")
features.sel <- features[which(grepl(ifelse(includeAllMeanAndStd,"(mean|std)","^.+(mean|std)$"),features$fea.name)),]

# Get Activity Labels
# Columns: act.id, act.name
activities <- read.table("./data/UCI HAR Dataset/activity_labels.txt", col.names = c("act.id","act.name"), stringsAsFactors = FALSE)

# Test Data
# Reads the x_test table (Features), selecting the columns required
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", col.names=features$fea.name )[,features.sel$fea.id]
# Reads the y_test table (Activities)
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", col.names=c("act.id"))
# Reads the subject_test table (Subjects)
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", col.names=c("subject"))
# Combines the 3 tables into one
test <- cbind(subject_test, activity = merge(y_test, activities, by.x="act.id", by.y="act.id", all=TRUE)$act.name, x_test)

# Train Data
# Reads the x_train table (Features), selecting the columns required
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", col.names=features$fea.name )[,features.sel$fea.id]
# Reads the y_train table (Activities)
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", col.names=c("act.id"))
# Reads the subject_train table (Subjects)
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", col.names=c("subject"))
# Combines the 3 tables into one, replaces activity id with activity name
train <- cbind(subject_train, activity = merge(y_train, activities, by.x="act.id", by.y="act.id", all=TRUE)$act.name , x_train)

# Combines train and test datasets
UCI_HAR_Dataset <- rbind(test, train)

# Saves Dataset
write.table(UCI_HAR_Dataset, file="UCI_HAR_Dataset.txt", row.names = FALSE)


# Summarize and calculate Average of each variable
# Uses Eval and Parse to dynamically create Average columns
# The result Data Frame "UCI_HAR_Dataset_Summarized" will be created
s <- paste(
    "UCI_HAR_Dataset_Summarized <- summarize(group_by(UCI_HAR_Dataset,subject, activity),",
    paste(features.sel$fea.name , "_avg = mean(",features.sel$fea.name , ",na.rm = TRUE)",  sep = "", collapse = ", "),
    ")",collapse = "")
# Eval created script
eval(parse(text=s))

write.table(UCI_HAR_Dataset_Summarized, file ="UCI_HAR_Dataset_Summarized.txt",row.names = FALSE)



