# data_explore_visualize.R
install.packages("ggplot2")
# Load necessary libraries
library(ggplot2)

# Plot numerical variables
house_prices_num <- subset(house_prices, select = -c(Id, SalePrice)) # Remove non-numeric columns

# Plot histograms
par(mfrow = c(3, 3))
invisible(lapply(names(house_prices_num), function(col_name) {
  truehist(house_prices_num[, col_name], main = paste("Histogram of", col_name), xlab = NA)
}))

# Scatter plot of GrLivArea vs SalePrice
g <- ggplot(house_prices, aes(x = GrLivArea, y = SalePrice))
g + geom_point() + 
  labs(title = "Scatter plot of GrLivArea vs SalePrice",
       x = "Above Ground Living Area (sq ft)",
       y = "Sale Price") +
  theme_minimal()

# Correlation with SalePrice
cor(house_prices_num, use = "pairwise.complete.obs")[, "SalePrice"]
