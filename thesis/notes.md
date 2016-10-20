This document contains snippets of planned structure/points to make to be able to more clearly visualise the flow of the parts of thesis mentioned.

# Experiments
* awkward ordering of GP/DM when saying GP can do a similar job but worse
    + perhaps break it up into single output then multi-output - showing why separating labels into individual problems without using DM is bad

* show that we need the richer information provided by multi-output labels

# GP
* huge time requirement
* only single-output
* can coerce into multi-output by using multiple GPs per normalised label
    + does not follow sum-to-1 constraint
    + have basic stats on how often the sum-to-1 constraint was deviated from considering that average across all axis=1 sums was actually quite close to 1
* 

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

# multi-output for LR/RF
* Linear Regression
    + almost no visual variance, entire prediction space is one massive contiguous block of even labels at every point. highly unlikely over a 200,000 km^2 area
* Random Forest Regression
    + spread of distributions of labels looks realistic, but sum-to-1 constraint is severely broken
    + average sum of normalised distributions per point is 1.5652
    + minimum of 0 (vacuum!?), and maximum of 3.5 (possibly plot these)
