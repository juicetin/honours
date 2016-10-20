This document contains snippets of planned structure/points to make to be able to more clearly visualise the flow of the parts of thesis mentioned.

# Experiments

# GP
* huge time requirement
* only single-output
* can coerce into multi-output by using multiple GPs per normalised label
    + does not follow sum-to-1 constraint

# DM
* naturally performs regression on multi-output, adheres to sum-to-1 constraint through multinomial distribution
* underlying linear model/activation function, considerably faster
    + projection of features to create model with appropriate complexity to fit data
## Biodiversity
* look at areas with lowest variance and hence a high confidence (atm, 1e-7), and look at the split of labels there
    + ~0.07 label 0, ~0.11 label 1, ~0.82 label 3
    + the complexity of extracting this information boils down to a single line of python code
    + allows analysis that is either impossible to do (as the lower occuring labels simply don't show up in predictions) with other methods, OR
    + requires too much time using Gaussian Processes
