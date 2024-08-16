# House Prices Prediction Project

This project aims to build and evaluate multiple machine learning models for predicting house prices using the House Prices dataset. The models include Linear Regression, Decision Trees, and Support Vector Machines (SVM), with a focus on model selection, tuning, and comparison.

## Project Structure
```bash
├── main.R
├── scripts
│   ├── data_load.R
│   ├── data_explore_visualize.R
│   ├── data_wrangling.R
│   ├── data_split.R
│   ├── model_training.R
│   ├── model_tuning.R
│   ├── visualizations.R
├── data
│   └── house_prices.csv
├── results
│   └── rmse_results.csv
└── README.md
```

### Files Description

- **`main.R`**: The main script that orchestrates the entire workflow.
- **`scripts/`**: Directory containing all the R scripts for various tasks:
  - `data_load.R`: Loads the dataset from the `data/` directory.
  - `data_explore_visualize.R`: Performs exploratory data analysis and visualizations.
  - `data_wrangling.R`: Cleans and preprocesses the data.
  - `data_split.R`: Splits the data into training and test sets.
  - `model_training.R`: Trains Linear Regression, Decision Tree, and SVM models.
  - `model_tuning.R`: Tunes the Decision Tree and SVM models.
  - `visualizations.R`: Generates visualizations to compare the models.
- **`data/`**: Directory containing the dataset file (`house_prices.csv`).
- **`results/`**: Directory where the results (e.g., RMSE values) are saved.

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/house-prices-prediction.git
   cd house-prices-prediction

2.**Place the Dataset**:
  - Download the House Prices dataset and save it as house_prices.csv inside the data/ directory.
3.**Run the Analysis**:
Open **`main.R`** in RStudio.
  - Ensure that the working directory is set to the project root.
  - Run the entire script to execute the workflow and generate results.
## Mathematical Background

### Linear Regression
Linear regression is a statistical method used to model the relationship between a dependent variable \( y \) and one or more independent variables \( X \). The model assumes a linear relationship between the input variables and the output. The mathematical form of a linear regression model is:


$$y = \beta_0 + \beta_1X_1 + \beta_2X_2 + \cdots + \beta_nX_n + \epsilon$$

where:
- \( $y$ \) is the dependent variable (target),
- \( $X_1, X_2, \ldots, X_n$ \) are the independent variables (features),
- \( $\beta_0$ \) is the intercept,
- \( $\beta_1, \beta_2, \ldots, \beta_n$ \) are the coefficients, and
- \( $\epsilon$ \) is the error term.

The goal of linear regression is to find the best-fitting line (or hyperplane) that minimizes the sum of the squared differences between the observed values and the values predicted by the model (Least Squares Method).

### Decision Tree
A Decision Tree is a non-parametric, supervised learning method used for classification and regression. The model predicts the value of a target variable by learning simple decision rules inferred from the data features. The tree is constructed by recursively splitting the dataset into subsets based on the feature that results in the highest information gain or the lowest Gini impurity (for classification) or the lowest variance (for regression).

For regression, each internal node represents a test on a feature, each branch represents an outcome of the test, and each leaf node represents a predicted value. The model’s output is the mean of the values in the leaf nodes.

### Support Vector Machine (SVM)
Support Vector Machine (SVM) is a powerful supervised learning algorithm primarily used for classification, but it can also be adapted for regression tasks (SVR - Support Vector Regression). SVM works by finding the hyperplane that best separates the data into different classes. In regression, the SVM model tries to fit the best line (or hyperplane) that has the maximum number of points within a margin of error \( \epsilon \) around the line.

The mathematical form of the SVM regression model is:


$$f(x) = \sum_{i=1}^{n} \alpha_i K(x_i, x) + b$$

where:
- \( $K(x_i, x)$ \) is the kernel function, which transforms the data into a higher dimension,
- \( $\alpha_i $\) are the support vectors' coefficients, and
- \( $b$ \) is the bias term.

The goal is to minimize the prediction error while controlling the model complexity.

### Model Evaluation: RMSE
The Root Mean Squared Error (RMSE) is a commonly used metric for evaluating the performance of regression models. RMSE measures the average magnitude of the errors between the predicted values and the actual values. It is calculated as:


$$\text{RMSE} = \sqrt{\frac{1}{n} \sum_{i=1}^{n} (y_i - \hat{y_i})^2}$$


where:
- \( $y_i$ \) are the actual values,
- \( $\hat{y_i}$ \) are the predicted values, and
- \( $n$ \) is the number of observations.

A lower RMSE value indicates a better fit of the model to the data.
## Contact  
For any questions or feedback regarding this project, please contact:

- **Name**: Labaihi Mohammed
- **Email**: m.labaihi@gmail.com
- **GitHub**: [Labaihi Mohammed](https://github.com/MedLabaihi)

Feel free to contribute to this project or reach out for further discussions on coding theory and its applications.
