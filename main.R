# main.R

# Set working directory to the project directory
setwd("./scripts")

# Load required libraries
library(dplyr)
library(caret)
library(ggplot2)
library(rpart)
library(e1071)
library(MASS)
library(leaps)
library(gridExtra)

# Source the scripts
source("scripts/data_load.R")
source("scripts/data_explore_visualize.R")
source("scripts/data_wrangling.R")
source("scripts/data_split.R")
source("scripts/model_training.R")
source("scripts/model_tuning.R")
source("scripts/visualizations.R")

# Final Model Evaluation on Test Data
# Linear Regression
predictions_lm <- predict(model_lm, test_set)
rmse_lm <- sqrt(mean((test_set$SalePrice - predictions_lm)^2))

# Decision Tree
predictions_tree <- predict(best_tree, test_set)
rmse_tree <- sqrt(mean((test_set$SalePrice - predictions_tree)^2))

# SVM
predictions_svm <- predict(best_svm, test_set)
rmse_svm <- sqrt(mean((test_set$SalePrice - predictions_svm)^2))

# Print RMSE results
cat("RMSE for Linear Regression: ", rmse_lm, "\n")
cat("RMSE for Decision Tree: ", rmse_tree, "\n")
cat("RMSE for SVM: ", rmse_svm, "\n")

# Generate visualizations
source("scripts/visualizations.R")

# Save RMSE results to a file
results <- data.frame(
  Model = c("Linear Regression", "Decision Tree", "SVM"),
  RMSE = c(rmse_lm, rmse_tree, rmse_svm)
)
write.csv(results, file = "results/rmse_results.csv", row.names = FALSE)

# Display the results table
print(results)
