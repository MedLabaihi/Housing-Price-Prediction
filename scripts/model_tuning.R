# model_tuning.R

# Load necessary libraries
library(caret)

# Tuning Decision Tree
tune_tree <- tune.rpart(SalePrice ~ ., data = train_str, minsplit = c(5,10,15, 20), cp = c(0.1,0.01,0.001,0.0001))
summary(tune_tree)
plot(tune_tree)

best_tree <- tune_tree$best.model
predict_tree <- predict(best_tree, train_str)
sqrt(mean((train_str$SalePrice - predict_tree)^2))  # RMSE of best tree model

# Tuning SVM
tune_svm <- tune.svm(SalePrice ~ ., data = train_str, cost = 10^(-1:2), gamma = c(0.1, 0.01, 1))
summary(tune_svm)
plot(tune_svm)

best_svm <- tune_svm$best.model
predict_svm <- predict(best_svm, train_str)
sqrt(mean((train_str$SalePrice - predict_svm)^2))  # RMSE of best SVM model
