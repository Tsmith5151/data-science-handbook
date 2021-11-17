# Production Monitoring 
__________

### A/B Testing
- A/B Testing is a way of conducting an experiment where you compare a control
  group to the performance of one or more test groups by randomly assigning
  each group a specific single-variable treatment. 

**Experimental Design → Control and Control Groups**
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

**Hypothesis Testing (T-Test):** 
- First, you want to set your alpha, the probability of making a type 1 error.
  Typically the alpha is set at 5% or 0.05.
- Next, you want to determine the probability value (p-value) by first
  calculating the t-statistic.
  Lastly, compare the p-value to the alpha. If the p-value is greater than the
  alpha, do not reject the null!

### Data Drift
- Drifts involve a statistical change in the data, the best approach to detect
  them is by monitoring  its statistical properties

**Address Model Drift:**

- You could implement a system that periodically trains your models after some
time t, or once it detects a drift  you could refresh a model’s weight by
extending its training with new data. 

**Alerts** 
- Recurring, Incremental, Outlier, Abrupt 
- Adaptive Sliding Window (very common approach)
    - Works by keeping track of several statistical properties of data within a
      window that  automatically grows and shrinks
- **Kolmogorov-Smirnov Test**
    - K-S test is nonparametric, meaning doesn’t assume any particular
      underlying distribution 
    - This test compares your data with a known distribution and test if they
      come from the same distribution. 
	- Null Hypothesis
	- Samples are from the same distribution

