# Feature Selection
_______

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

