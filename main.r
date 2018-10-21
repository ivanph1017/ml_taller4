library(e1071)

train_data <- read.csv('train.csv')
test_data <- read.csv('test.csv')

train_indexes <- c(1, 2, 3, 5, 6, 7, 8, 10, 12)
test_indexes <- c(1, 2, 4, 5, 6, 7, 9, 11)
train_data <- train_data[, train_indexes]
test_data <- test_data[, test_indexes]

NA2mean <- function(x) replace(x, is.na(x), mean(x, na.rm = TRUE))
train_data$Age <- replace(train_data$Age, TRUE, lapply(train_data$Age, NA2mean))
# test_data[,4] <- replace(test_data[,4], TRUE, lapply(test_data[,4], NA2mean))
# train_data[,5] <- lapply(train_data[,5], NA2mean)
# test_data[] <- lapply(test_data, NA2mean)

# classifier <- naiveBayes(train_data[, 3:9], train_data$Survived)
# test_pred <- predict(classifier, test_data[, 2:8])
train_data


