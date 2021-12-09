# A/B Testing
__________

### Overview

- A/B Testing is a way of conducting an experiment where you compare a control
  group to the performance of one or more test groups by randomly assigning
  each group a specific single-variable treatment. 

### Experimental Design 
- One of the treatments will be the control and the other treatments will be
  variations on that. 

- **Determine Power of the Test:**
    - The minimum sample size for control and experiment groups that yields the
      highest statistical power (Beta). 
    - Statistical power increases as alpha increases, thus beta will decrease
      `beta = 1 - power`.
    - Random sampling is a technique where each sample in a population has an
      equal chance of being chosen. 
    - Essential that you determine the minimum sample size for your A/B test
      prior to conducting it so  that you can eliminate under coverage bias.

### Hypothesis Testing (T-Test):
- First, you want to set your alpha, the probability of making a type 1 error.
  Typically the alpha is set at 5% or 0.05.
- Next, you want to determine the probability value (p-value) by first
  calculating the t-statistic.
  Lastly, compare the p-value to the alpha. If the p-value is greater than the
  alpha, do not reject the null!