# data_load.R
install.packages("readr")
# Load necessary libraries
library(readr)

# Load the House Prices dataset
data_path <- "data/house_prices.csv"

# Check if the file exists
if (!file.exists(data_path)) {
  stop("Data file not found: ", data_path)
}

# Load the data into a dataframe
house_prices <- read.csv(data_path, stringsAsFactors = FALSE)

# Check if the file exists
if (!file.exists(data_path)) {
  stop("Data file not found: ", data_path)
}

# Print basic information about the dataset
cat("Data loaded successfully. Here are some details:\n")
cat("Number of rows: ", nrow(house_prices), "\n")
cat("Number of columns: ", ncol(house_prices), "\n")


# Explore the dataset
head(house_prices)
str(house_prices)
summary(house_prices)
