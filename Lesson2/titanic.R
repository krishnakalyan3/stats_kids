library(tidyverse)
library(corrplot)
library(VIM)
library(randomForest)

# data
train <- read_csv('/Users/kkalyan/github/stats_kids/Lesson2/data/train.csv')

summary(train)
glimpse(train)
View(train)

train$Sex <- factor(train$Sex)
train$Survived <- factor(train$Survived)
# What is the AIM?s

# Missing Values
summary(aggr(train, prop = FALSE, combined = TRUE, numbers = TRUE, sortVars = TRUE, sortCombs = TRUE))

# Questions: How to handle missing values?

# Building Model
set.seed(123)
rf_model <- randomForest(Survived ~ Fare + Sex + SibSp, data = train)

survived_pred <- predict(rf_model, train)
summary(rf_model)
d <- table(train$Survived, survived_pred)
sum(diag(d))/sum(d)

# Accuracy
0.8024691

importance    <- importance(rf_model)
varImportance <- data.frame(Variables = row.names(importance), 
                            Importance = round(importance[ ,'MeanDecreaseGini'],2))

rankImportance <- varImportance %>%
  mutate(Rank = dense_rank(desc(Importance)))  %>% arrange(Rank)

# Explain the importance of validation set
# Overfitting
# Read some Kaggle kernels share a markdown by next class
