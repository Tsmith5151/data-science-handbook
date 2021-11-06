# Data Preprocessing
__________

## Missing Values

- Reasons:
	- Missing completely at random (MCAR)
	- Missing at random (MAR)
	- Not missing at random (NMAR)
- How to handle the missing values:
	- Do Nothing: 
		- Models like XGBoost can deal with missing values by deciding for each sample which is the best way to impute them and learns the best values 
	- Imputation: 
		- Using (Mean/Median) Value
		- Using (Most Frequent) Value
		- Using k-NN
		- Interpolation (Linear/Nearest Neighbors)

## Outliers

**Identify Outliers**

- **Cook’s Distance:** 
	- Measures the effect of deleting a given observation. It represents the sum of all the changes in the regression model when observation “i” is removed from it. 
- **Interquartile Range Method (IQR):** 
	- Is a good statistic for summarizing a non-Gaussian distribution sample of data.
	- IQR is calculated as the difference between the 75th and the 25th percentiles of the data and defines the box in a box and whisker plot.
	- The IQR defines the middle 50% of the data, or the body of the data 
	- Can be used to identify outliers by defining limits on the sample values that are below the 25th percentile or above the 75th percentile. 
	- Linear Models: Projection methods that model the data into lower dimensions using linear correlations. 
	- For example, PCA and data with large residual errors may be outliers.
	- Proximity-based Models: Data instances that are isolated from the mass of the data as determined by cluster, density or KNN analysis.

**Handling Outliers**

- **Log-Scale Transformation:** This method is often used to reduce the variability of data including outlying observation. 
- **Model Selection:** Tree based models are less impacted by outliers compared to linear models.
	- XGBoost and boosting in general are very sensitive to outliers.
	- This is because boosting builds each tree on previous trees' residuals/errors. 
- Outliers will have much larger residuals than non-outliers, so boosting will focus a disproportionate amount of its attention on those points


## Categorical Encoding

**One Hot Encoding:**
-  Maps each category to a vector that contains 1 and 0 denoting the presence or absence of the feature. 
- The number of vectors depends on the number of categories for features. 
- This method produces a lot of columns that slows down the learning significantly if the number of the category is very high for the feature.

**Label Encoder:**
- Each category is assigned a value from 1 through N (here N is the number of categories for the feature. 
- One major issue with this approach is there is no relation or order between these classes, but the algorithm might consider them as some order, or there is some relationship.

**Ordinal encoding:** 
- To ensure the encoding of variables retains the ordinal nature of the variable. 
- This is reasonable only for ordinal variables. 
- The transformation looks almost similar to Label Encoding but slightly different as Label coding would not consider whether a variable is ordinal or not and it will assign a sequence of integers.

**Binary Encoding:**
- Converts a category into binary digits. 
- Each binary digit creates one feature column. 
- If there are n unique categories, then binary encoding results in the only log(base 2)ⁿ features. 
- Compared to One Hot Encoding, this will require fewer feature columns.    
  - **Explain:** for 100 categories One Hot Encoding will have 100 features
    while forBinary encoding, we will need just seven features.
  
## Data Normalization 
- Standardize: scaling features by removing the mean and scaling to unit
  variance
- MinMax: Transform features by scaling each feature to a given range [-1,1].
  

