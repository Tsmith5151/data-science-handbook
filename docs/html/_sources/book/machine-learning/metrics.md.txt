# Model Evaluation 
__________

# Regression 

### R-Squared
- Statistical measure of fit that indicates how much variation of a dependent
  variable is explained by  the independent variable(s) in a regression model.

- **Problem 1:** Every time you add a predictor to a model, the R-squared
  increases, even if due to chance alone. It never decreases. Consequently, a
  model with more terms may appear to have a better fit simply because it has
  more terms.

- **Problem 2:** If a model has too many predictors and higher order
  polynomials, it begins to model  the random noise in the data. 
  Leads to overfitting and  produces misleadingly high R-squared values and a
  lessened ability to make  predictions.

### Adjusted R-Squared
- Modified version of R-squared that has been adjusted for the number of
  predictors in the model.  
- Increases only if the new term improves the model more than would be expected
  by chance.  
- Decreases when a predictor improves the model by less than expected by chance. 
- The adjusted R-squared can be negative, but it’s usually not.  
- It is always lower than the R-squared.

### Root Mean Squared Error 
- The square root of the variance of the residuals. It indicates the absolute
  fit of the model to the  data–how close the observed data points are to the
  model’s predicted values. 
- Whereas R-squared is a relative measure of fit, RMSE is an absolute measure of fit. 
- As the square root of a variance, RMSE can be interpreted as the standard
  deviation of the unexplained variance, and has the useful property of being
  in the same units as the response variable.  

**Lower values of RMSE indicate better fit**
- RMSE is a good measure of how accurately the model predicts the response, and
  it is the most important criterion for fit if the main purpose of the model
  is prediction.
 
### Mean Absolute Error 
- MAE is not identical to root-mean square error (RMSE), although some
researchers report and interpret it that way. 
- MAE is conceptually simpler and also easier to interpret than RMSE: it is
  simply the average  absolute vertical or horizontal distance between each
  point in a scatter plot and the Y=X line.
- In other words, MAE is the average absolute difference between X and Y.

______
# Classification 

### Accuracy
- Accuracy = (TP+TN)/(TP+FP+FN+TN)
- Accuracy is a valid choice of evaluation for classification problems which
  are well balanced and not  skewed or No class imbalance.
- **Warning:** Let us say that our target class is very sparse. Do we want
  accuracy as a metric of our  model performance? What if we are predicting if
  an asteroid will hit the earth? Just say No all the time. And you will be 99%
  accurate. 

### Precision
- `Positive Predictive Rate`
- Precision = (TP)/(TP+FP)
- What proportion of predicted Positives is truly Positive? 
- Precision is a valid choice of evaluation metric when we want to be very sure
  of our prediction 

### Recall
- `True Positives` or `Sensitivity`
- These are cases in which mode predicted True and label is True
- **Example:** When the label is True, how often does the model predict True?

### F1 Score
- Weighted average of the recall and precision
- F1 score sort of maintains a balance between the precision and recall for
  your classifier.  
   - If your precision is low, the F1 is low and if the recall is low again
     your F1 score is low.
- **Example:** If you are a police inspector and you want to catch criminals,
  you want to be sure that  the person you catch is a criminal (Precision) and
  you also want to capture as many criminals (Recall) as possible. The F1 score
  manages this tradeoff.

### Specificity
- `True negative` = (1 - False Negative Rate)
- Model predicted no and label is False. 
- **Example:** When the label is False, how often does the model predict False

### False positives 
- `Type 1 Error`
- **Example:** Model predicted yes, but the patient didn't actually have the disease.

### False negatives 
- `Type II Error`
- **Example:** Model predicted no, but the patient actually did have the disease. 

### AUC Score
- AUC measures the entire two-dimensional area underneath the entire ROC curve
  ( TPR and FPR)  
- It tells how much a model is capable of distinguishing between classes. 
- Higher the AUC, the better the model is at predicting 0s as 0s and 1s as 1s. 
- **Example:** Higher the AUC, then the better the model is at distinguishing
  between patients with  disease and no disease.

