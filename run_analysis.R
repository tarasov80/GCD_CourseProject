#1. Merges the training and the test sets to create one data set.
dirMainData <- "getdata-projectfiles-UCI HAR Dataset"

##reading variable names fro file (features.txt)
fileName <- "features.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
ftsData <- read.table(filePath, as.is = TRUE)
#turn the column of variable names into the row
ftsData <- t(ftsData)

##reading training labels
fileName <- "train/y_train.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
lbltrnData <- read.table(filePath)

##reading training set data
fileName <- "train/X_train.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
trnData <- read.table(filePath)

##reading traing subjects data
fileName <- "train/subject_train.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
sbjtrnData <- read.table(filePath)

###########################
##reading test labels
fileName <- "test/y_test.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
lbltstData <- read.table(filePath)

##reading test set data
fileName <- "test/X_test.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
tstData <- read.table(filePath)

##reading test subjects data
fileName <- "test/subject_test.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
sbjtstData <- read.table(filePath)


#setting the names of variables (now the second row (before transposing it was the second column))
#It's part of step 4
names(trnData) <- ftsData[2, ]
names(tstData) <- ftsData[2, ]

#merging training label and subject data
trnData <- cbind(lbltrnData, sbjtrnData, trnData)
rm(lbltrnData)
rm(sbjtrnData)

tstData <- cbind(lbltstData, sbjtstData, tstData)
rm(lbltstData)
rm(sbjtstData)

#merging training and test data
data <- rbind(trnData, tstData)
rm(trnData)
rm(tstData)
rm(ftsData)

#adding names for label and subject data
#It's part of step 4
names(data)[1]<- "activity_id"
names(data)[2]<- "subject"


#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#find all mean() and std() columns via grep function and form resulting data set
resultData <- cbind(data[1:2], data[grep("mean()", names(data))], data[grep("std()", names(data))])
rm(data)


#3. Uses descriptive activity names to name the activities in the data set
##reading activities names from file (activity_labels.txt)
fileName <- "activity_labels.txt"
filePath <- paste(dirMainData, fileName, sep ="/" )
actlblData <- read.table(filePath, as.is = TRUE)
names(actlblData) <- c("activity_id", "activity")

#merge data without sorting data - pay attention to "sort" parameter and sequence of datasets
resultData = merge(resultData, actlblData, by.x = "activity_id", by.y = "activity_id", sort = F)
rm(actlblData)
#write.table(resultData, "full.txt", row.name=FALSE)

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
meanData <- aggregate(resultData[3:81], by = list(resultData$activity, resultData$subject), FUN = "mean")
rm(resultData)
names(meanData)[1:2] <- c("activity", "subject")


write.table(meanData, "result.txt", row.name=FALSE)
rm(meanData)