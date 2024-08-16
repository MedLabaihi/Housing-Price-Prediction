# model_training.R
install.packages("rpart")
install.packages("e1071")
# Load necessary libraries
library(rpart)
library(e1071)

# Linear Regression
model_lm <- lm(SalePrice ~ ., data = train_str)
summary(model_lm)

# Decision Tree
model_decision_tree <- rpart(SalePrice ~ ., data = train_str, method = "anova", control = rpart.control(minsplit = 2, cp = 0.001))
summary(model_decision_tree)

# SVM
model_svm <- svm(SalePrice ~ ., data = train_str, cost = 10)
summary(model_svm)
