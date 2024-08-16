# data_wrangling.R
install.packages("dplyr")
# Load necessary libraries
library(dplyr)

# Data wrangling
house_prices <- house_prices %>%
  filter(!is.na(SalePrice)) %>%  # Remove rows with missing SalePrice
  mutate_at(vars(-Id, -SalePrice), funs(ifelse(is.character(.), as.factor(.), .))) %>%
  mutate_at(vars(-Id, -SalePrice), scale) %>%  # Standardize numeric features
  data.matrix %>% data.frame

# Ensure no missing values
house_prices <- na.omit(house_prices)
