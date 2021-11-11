# Dimensionality Reduction
_______

### Principal Component Analysis

- Dimension reduction technique that finds the variance maximizing directions
  onto which to project the data. 
- Algorithm to reduce the dimensionality of the data by compressing it onto a
  new feature subspace, where a subset of the  principal components (i.e.
  eigenvectors) accounts for the **highest variance** and explains the underlying
  structure of the overall dataset. 
- The eigenvectors of the correlation or covariance matrix represent the
  principal components (directions of maximum variance and determine the
  direction of the new feature space) and the eigenvalues (scalar) correspond
  to the magnitude of the eigenvectors. 
- The eigenvector with the **largest eigenvalue** is the direction along which the
  data set has the maximum variance. 
- After applying the linear PCA transformation, we have a lower dimensional
  subspace where the samples are “most spread” along the  new feature axes. 
- PCA reduces high dimensional space down to two or three principal components
  without losing much information. 