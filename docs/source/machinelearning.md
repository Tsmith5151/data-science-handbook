__________
## Machine Learning 
__________

## Bias Variance Trade-off

- **Bias:** is the difference between the expected (or average) prediction of our model and the correct value which we are trying to predict.
- **Variance:** is the variability of a model prediction for a given data point.

- The sweet spot for any model is the level of complexity at which the increase in bias is equivalent to the reduction in variance.

- Increasing model complexity tends to increase variance and decrease bias.

- However our model complexity exceeds this sweet spot we are in effect
  over-fitting; while if our complexity falls short of the sweet spot =
  under-fitting 

![image](_static/bias_variance.png)

**Addressing Variance:**
- Bagging and other resampling techniques can be used to reduce the variance in
  model predictions. 
- In bagging (Bootstrap Aggregating), numerous replicates of the original data set are created using random selection with replacement.

## Overfitting
- Occurs when the model over fits on the training data and does not generalize
  to the unseen sample population. 
- Ways to address overfitting: 
	- Get more data
	- Add regularization
	- Cross-Validation 
	- Less complex model
	- Data augmentation (images)
	- Smaller input dimensionality (remove features)

## Regularization
- Technique to help reduce overfitting by adding an additional parameter to the loss function, usually the L1 or L2 norm. 
- In order to help prevent overfitting, we can add in a term into our optimization that keeps the weights small

**L1 Regularization (Lasso): “Absolute Value Magnitude”**
- Lasso Regularizer forces a lot of feature weights to be zero

**L2 Regularization (Ridge): “Squared Magnitude”**


![image](_static/regularization.png)

## Cross Validation
- To avoid sampling issues, which can cause the training-set to be too optimistic. 
- Cross-validation is used to protect against overfitting in a predictive model, particularly the case where the amount of data is limited. 

**K-Fold:**
- Splits the training data into ‘k’ folds to validate the model on one file while training on the k-1 other folds ‘k’ times. The error is then averages over the fold

## Distance Measurements

**Euclidean Distance**
- sqrt((x2-x1)2 + (y2-y2)2)--> Pythagorean Theorem

**Manhattan Distance**
- Calculates the distance between two data points in a grid like path - absolute sum of difference

**Cosine Distance**
- Measure the degree of angle between two documents or vectors. 
- Cosine value 1 is for vectors pointing in the same direction i.e. there are
  similarities between the documents/data points. 
- At zero for orthogonal vectors i.e. Unrelated(some similarity found). 
- Value -1 for vectors pointing in opposite directions(No similarity).

**Mahalanobis Distance**
- A measure of the distance between a point P and a distribution D.
- Why use it? 
	- If the feature vectors are correlated to one another, which is typically the case in real-world datasets, the Euclidean distance between a point and the center of the points (distribution) can give little or misleading information about how close a point really is to the cluster. 
	- Euclidean distance is a distance between two points only. It does not consider how the rest of the points in the dataset vary
- Steps:
	- It transforms the columns into uncorrelated variables	
	- Scale the columns to make their variance equal to 1
	- Finally, it calculates the Euclidean distance.
 
## Cross Entropy
- Measures the difference between two probability distributions for a given random variable or set of events - classification problems
- Entropy: is the number of bits required to transmit a randomly selected event
from a probability distribution. 
- A skewed distribution has a low entropy, whereas a distribution where events have equal probability has a larger entropy.

![image](_static/cross_entropy1.png)
![image](_static/cross_entropy2.png)

## Loss Functions
- Function that takes as inputs the predicted value ‘z’ corresponding to the
  real data value ‘y’ and outputs how different they are. 

![image](_static/loss_functions.png)

## Discriminative vs Generative 

![image](_static/discrimitive_generative.png)

## Feature Selection

**Filter Based**
- We specify some metric and based on that filter features. 
	- chi-square test
	- fisher score
	- correlation coefficient
	- variance threshold

**Wrapper-based**
- Wrapper methods consider the selection of a set of features as a search problem.
	- Sequential Feature Selection
	- Forward/Stepwise/Backward Selection

**Embedded**
- Embedded methods use algorithms that have built-in feature selection methods. 
	- Lasso
	- Tree based models

**Forward Selection**
- The procedure starts with an empty set of features [reduced set]. The best of the original features is determined and added to the reduced set. At each subsequent iteration, the best of the remaining original attributes is added to the set.


**Backward Elimination**
- The procedure starts with the full set of attributes. At each step, it removes the worst attribute remaining in the set.

**Sequential Feature Selection**
- Greedy procedure where, at each iteration, we choose the best new feature to add to our selected features based on a cross-validation score. 
- That is, we start with 0 features and choose the best single feature with the highest score. 
- The procedure is repeated until we reach the desired number of selected features.

**Embedded Feature Selection**
- Augment with noisy data 
- Can apply this approach to Tree based models: XGBoost, DecisionTree, RandomForrest
- The idea is that we can inject noisy data features into our input training dataset when training model
- Here we can perform cross-validation with n-folds where at each n-fold inject noisy features in each iteration and determine the threshold in which the first noisy feature is selected when computing feature importance. 
- We select the raw features that are less than this threshold and append to a
list. 
- We do this iteratively for each fold and then take a set of the final appended list. 
- This approach can help minimize model overfitting. 















 











