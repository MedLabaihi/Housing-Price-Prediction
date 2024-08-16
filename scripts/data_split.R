# data_split.R
install.packages("caret")
# Load necessary library
library(caret)

# Split into training and test sets
set.seed(365)
train_id <- createDataPartition(house_prices$SalePrice, p = 0.8, list = FALSE)
train_set <- house_prices[train_id, ]
test_set <- house_prices[-train_id, ]
print(paste(nrow(train_set), "train +", nrow(test_set), "test"))

# Stratified sampling based on SalePrice
house_prices <- house_prices %>%
  mutate(price_category = cut(SalePrice, breaks = quantile(SalePrice, probs = 0:5/5), include.lowest = TRUE))

train_str_id <- createDataPartition(house_prices$price_category, p = 0.8, list = FALSE)
train_str <- house_prices[train_str_id, ]
test_str <- house_prices[-train_str_id, ]

# Check stratification
table(house_prices$price_category) / nrow(house_prices)
table(train_str$price_category) / nrow(train_str)
