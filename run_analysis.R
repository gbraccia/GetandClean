X_train <- read.table("~/R/UCI HAR Dataset/train/X_train.txt", quote="\"")

X_test <- read.table("~/R/UCI HAR Dataset/test/X_test.txt", quote="\"")

x_total <- rbind(X_train,X_test)

features <- read.table("~/R/UCI HAR Dataset/features.txt", quote="\"")

idx1 <- grep("mean()",as.character(features$V2))

idx2 <- grep("std()",as.character(features$V2))

idx <- c(idx1,idx2)

x_total2 <- x_total[,idx]

y_train <- read.table("~/R/UCI HAR Dataset/train/y_train.txt", quote="\"")

y_test <- read.table("~/R/UCI HAR Dataset/test/y_test.txt", quote="\"")

activity_labels <- read.table("~/R/UCI HAR Dataset/activity_labels.txt", quote="\"")

features[,2] <- sapply(features[,2],as.character)

n <- rbind(c(0,"activity"),features[idx,])

colnames(x_total3) <- n[,2]

x_total4 <- aggregate(x_total3,list(x_total3$activity),mean)




