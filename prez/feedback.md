motivation 1st slide
* have bathymetry map, picture of AUV in water, an examples of images pulled up, training data
    + explain the problem presented
    + WHY they're important
    + protecting environment, knowing what habitats are where, protection of reefs
    + extrmely labvorious and costly to map entire reef
    + typically explore small parts of reef, and extraoplate out
    + used to be done by hand with divers going in water
    + now robots can go in
    + learning between depth/slope/roughness/labels, predicting across entire reef
    + have the example map later
    + (more visual)
    + where the labels come form
    + use ML to cluster into groups
    + lead into past works
    + ending motivation - what we want to be able to do is build up a habitat map of this area using relationships learnt, make predictions across entire reef
        - because we are taking actions, we need to know uncertainty
        - very expensive computational procedure that ideally can be run on the robot, so we look at no only how to generate map, but fast and efficint and use as much of the data as possible without throwing it away
    + what's been done before?

# RELATED WORKS
* other than by hand - look at pictures and divers' returned maps
* more recently, deterministic methods like random forests (show a picture) (or SVMs)
    + these are machine learning models for classification, fast and robust
    + no understanding of uncertainty - crucial as decisions are being made
* pictures of Ash's stuff when explaining GP/prob stuff
    + benefits - however, bottleneck
    + bring up equation - matrix inversion - hidden complexity - K matrix size of data, scaling cubically
* where our work begins - how to speed up these probabilistic maps

* how to approximate
    + PoE - explain in more detail
    + big N^3, small n^3 lots of times
    + put numbers side by side - comparison
    + each expert is expert in their area
* earlier slides on label approximations, how they're grouped
    + use more appropriate method for the data

$$ O(n_1^3) + O(n_2^3) + \ldots + O(n_{k-1}^3) + O(n_k^3) \text{ } \ll \text{ } O(N^3) $$

where $n_1 + n_2 + \ldots + n_{k-1} + n_k = N$

$$ \text{if  } n_k = n_k = \ldots = n_{k-1} = n_k \text{, and  } k=100, N=20000$$
$$ 100 \times O(200^3) \ \ll \ O(20000^3) \ \ \rightarrow \ \ 8 \times 10^8 \ \ll \ 8 \times 10^12  $$

* DM
* designed to output mixture of labels
* show categorical distribution
* GP single label, this gives a mixture
    + GP struggle with 24 labels 
    + smarter model - not only aggregate into larger groups, but label mixtures
* in this region, expect to see distribution, etc. - just because mix, not different habitats

* don't show the distributions over the 4 labels (24 is the important one)
* before entropy - show argmax being richer - query any point, get a multinomial
    + show in the next slide, using biodiversity (gif LATER)
* bio - high biodivrsity in coral mountain, deep sand no biodiversity
* also get uncertainties on DM using MCMC
    + converging on a map
    + we can use entropy to show which of those are uncertain, can use thi to guide misssions to uncertain areas

# Discussion
* separate 

# Future work point
* guide missions using entropy
