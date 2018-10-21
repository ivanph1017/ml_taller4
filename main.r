library(e1071)
library(arules)

train_data <- read.csv('train.csv', stringsAsFactors=FALSE, 
                       strip.white=TRUE, na.strings=c(""," ","NA"))
test_data <- read.csv('test.csv', stringsAsFactors=FALSE, 
                      strip.white=TRUE, na.strings=c(""," ","NA"))

train_indexes <- c(1, 2, 3, 5, 6, 7, 8, 10, 12)
train_data <- train_data[, train_indexes]

test_indexes <- c(1, 2, 4, 5, 6, 7, 9, 11)
test_data <- test_data[, test_indexes]

# Remove rows with Embarked value as NA
train_data <- train_data[complete.cases(train_data$Embarked), ]
test_data <- test_data[complete.cases(test_data$Embarked), ]

# Survived
train_data$Survived <- factor(train_data$Survived)

# Pclass
train_data$Pclass <- factor(train_data$Pclass, 
                            labels=c(1, 2, 3), ordered = TRUE)
test_data$Pclass <- factor(test_data$Pclass, 
                           labels=c(1, 2, 3), ordered = TRUE)

# Sex
train_data$Sex <- factor(train_data$Sex, 
                         labels=c('female', 'male'))
test_data$Sex <- factor(test_data$Sex, 
                        labels=c('female', 'male'))

# Age
NA2mean <- function(x) replace(x, is.na(x), mean(x, na.rm=TRUE))
# train_data[5] <- replace(train_data[5], TRUE, lapply(train_data[5], NA2mean))
# test_data[4] <- replace(test_data[4], TRUE, lapply(test_data[4], NA2mean))
train_data[5] <- lapply(train_data[5], NA2mean)
test_data[4] <- lapply(test_data[4], NA2mean)

# Discretize age
train_data$Age <- discretize(train_data$Age)
test_data$Age <- discretize(test_data$Age)

# SibSp
train_data$SibSp <- factor(train_data$SibSp)
test_data$SibSp <- factor(test_data$SibSp)

# Parch
train_data$Parch <- factor(train_data$Parch)
test_data$Parch <- factor(test_data$Parch)

# Fare
# Discretize Fare
train_data$Fare <- discretize(train_data$Fare)
test_data$Fare <- discretize(test_data$Fare)

# Embarked
train_data$Embarked <- factor(train_data$Embarked)
test_data$Embarked <- factor(test_data$Embarked)

# Convert from list to vector
train_data <- as.data.frame(lapply(train_data, unlist))
test_data <- as.data.frame(lapply(test_data, unlist))

classifier <- naiveBayes(train_data[3:9], train_data$Survived)
test_pred <- predict(classifier, test_data[2:8])
classifier
test_pred

