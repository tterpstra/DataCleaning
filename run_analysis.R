## Setup
library(dplyr)
## Pull files into data frames and combine into one data frame
feature <- read.delim("features.txt", sep=" ", header = FALSE, col.names=c("ID","obs"))
ytrain <- read.delim("./train/y_train.txt", header = FALSE, col.names=("Activity"))
colname<-feature[, "obs"]
xtrain <- read.delim("./train/X_train.txt", sep="", header=FALSE, col.names=colname)
subtrain <- read.delim("./train/subject_train.txt", header=FALSE, col.names=("Subject"))
train <- cbind(subtrain, ytrain, xtrain) 
ytest <- read.delim("./test/y_test.txt", header = FALSE, col.names=("Activity"))
xtest <- read.delim("./test/X_test.txt", sep="", header=FALSE, col.names=colname)
subtest <- read.delim("./test/subject_test.txt", header=FALSE, col.names=("Subject"))
test <- cbind(subtest, ytest, xtest) 
fullset <- rbind(test,train)
## select only the variables measuring mean or std, and calculate means per group
meanstd <- select(fullset, c(1,2, c(grep("mean\\.", names(fullset))), grep("std", names(fullset))))
results <- aggregate(meanstd[, 3:68], list(meanstd$Subject, meanstd$Activity), mean)
## revert group_by columns back to orginal names
colnames(results)[1] <- "Subject"
colnames(results)[2] <- "Activity"
## convert Activity column to factor and add factor names
results$Activity <- factor(results$Activity)
levels(results$Activity) <- c("WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
## rename variable columns to indicate values are means
curcolnames <- names(results[,3:68])
newcolnames <- paste("MEAN_", curcolnames, sep="")
newcolnames <- c("Subject", "Activity", newcolnames)
colnames(results) <- newcolnames
## Output file
write.csv(results, "results.txt", row.names=FALSE)