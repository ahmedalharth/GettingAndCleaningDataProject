url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "dataset.zip", mode = "wb")
unzip("dataset.zip")

x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")


X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)


features <- read.table("UCI HAR Dataset/features.txt")
mean_std <- grep("mean\\(\\)|std\\(\\)", features[,2])
X <- X[, mean_std]
names(X) <- features[mean_std, 2]



activities <- read.table("UCI HAR Dataset/activity_labels.txt")
Y[,1] <- activities[Y[,1], 2]
names(Y) <- "Activity"
names(Subject) <- "Subject"


mergedData <- cbind(Subject, Y, X)


library(dplyr)
tidyData <- mergedData %>%
  group_by(Subject, Activity) %>%
  summarise_all(mean)

write.table(tidyData, "tidyData.txt", row.names = FALSE)
