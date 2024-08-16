# visualizations.R

# Load necessary libraries
library(ggplot2)
library(reshape2)

# Linear Regression Visualization
predictions_lm <- predict(model_lm, test_set)
ggplot() +
  geom_point(aes(x = test_set$SalePrice, y = predictions_lm), color = 'blue') +
  geom_abline(intercept = 0, slope = 1, color = 'red') +
  labs(title = 'Linear Regression: Predicted vs Actual',
       x = 'Actual Sale Price',
       y = 'Predicted Sale Price') +
  theme_minimal()
ggsave("linear_regression_vs_actual.png", plot = last_plot(), path = "plots")

# Decision Tree Visualization
predictions_tree <- predict(best_tree, test_set)
ggplot() +
  geom_point(aes(x = test_set$SalePrice, y = predictions_tree), color = 'green') +
  geom_abline(intercept = 0, slope = 1, color = 'red') +
  labs(title = 'Decision Tree: Predicted vs Actual',
       x = 'Actual Sale Price',
       y = 'Predicted Sale Price') +
  theme_minimal()
ggsave("decision_tree_vs_actual.png", plot = last_plot(), path = "plots")

# SVM Visualization
predictions_svm <- predict(best_svm, test_set)
ggplot() +
  geom_point(aes(x = test_set$SalePrice, y = predictions_svm), color = 'purple') +
  geom_abline(intercept = 0, slope = 1, color = 'red') +
  labs(title = 'SVM: Predicted vs Actual',
       x = 'Actual Sale Price',
       y = 'Predicted Sale Price') +
  theme_minimal()
ggsave("svm_vs_actual.png", plot = last_plot(), path = "plots")

# Comparison Visualization
results <- data.frame(
  Actual = test_set$SalePrice,
  Linear_Regression = predictions_lm,
  Decision_Tree = predictions_tree,
  SVM = predictions_svm
)
results_long <- melt(results, id.vars = 'Actual')
ggplot(results_long, aes(x = Actual, y = value, color = variable)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1, color = 'black', linetype = 'dashed') +
  labs(title = 'Model Predictions vs Actual Values',
       x = 'Actual Sale Price',
       y = 'Predicted Sale Price') +
  theme_minimal() +
  scale_color_manual(values = c('blue', 'green', 'purple'), 
                     labels = c('Linear Regression', 'Decision Tree', 'SVM'))
ggsave("model_comparison.png", plot = last_plot(), path = "plots")
