library(tidyverse)

sumbmissions <-  read_csv('/Users/kkalyan/github/stats_kids/Lesson2/data/gender_submission.csv')

# Random Submission
table(sumbmissions$Survived)

# All Death
sumbmissions$Survived = 0
table(sumbmissions$Survived)
write.csv(sumbmissions,"all_dead.csv", row.names = FALSE)

# Random Forest
train <- read_csv('/Users/kkalyan/github/stats_kids/Lesson2/data/train.csv')
train$Sex <- factor(train$Sex)
train$Survived <- factor(train$Survived)
rf_model <- randomForest(Survived ~ Fare + Sex + SibSp, data = train)
survived_pred <- predict(rf_model, train)
test <- read_csv('/Users/kkalyan/github/stats_kids/Lesson2/data/test.csv')
test$Sex <- factor(test$Sex)
sumbmissions$Survived <- predict(rf_model, test)
write.csv(sumbmissions,"rf.csv", row.names = FALSE)
