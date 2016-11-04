# Motivation/Objective of own work 
* 1 minute
* Benthic habitat mapping studies generally use deterministic, single-output methods
* For people involved in manging or conserving ocean habitats, they need to be able to quantatively assign risk to any action they may need to take
    + this allows appropriate resources dedicated to backup actions/fallbacks that may need to be put into place
    + an all-or nothing approach is not an option in terms of any sort of environmental conversation
* probabilistic methods (GPs) have a time constraint
* need for multi-output
* because of the way data 
# Background literature 
* 1 minute
* go through some basic deterministic approaches used in the past - SVMs, RFs, even LR
* mention works that have touched on use of GPs - Bender's 2012 work
# Outlining of own approach/method/algorithm 
* 3 minutes
* applying GP approximations to mapping to see how they perform relative to deterministic methods
* multi-output by not simplifying the data
# Main results of own project 
* 2 minutes
# Discussion/Evaluation/Contribution of own work 
* 2 minutes
# Conclusion and Future Work 
* 2 minutes


# Motivation
Before we delve into it, I'll give a brief primer on what the focus of this study, benthic habitat mapping is. The benthic zone refers to lowest layer of a body of water, such as lake bed or the ocean floor. So, looking at this image, we can get an idea of what benthic habitat mapping is using a simple example. First, bathymetry data is collected over an extensive area so that we know the topography of the benthic zone in question, allowing us to infer other information such as roughness and slope - these are indicated by the blue and orange dots. For a subset of the area, we then collect data that allows us to verify the true habitats - in this case, the dotted black line representing an autonomous underwater vehicle taking images at each black square. By modelling a relationship between the bathymetry data and the images collected where both exists, we can then apply it to the bathymetry data that does not have corresponding labels, to predict the habitats in those areas. The reason for not simply collecting the image data for the entire area is that it is prohibitively expensive, and it's easy to imagine why it's not economically feasible to do this for the entire ocean. By creating these maps, different agencies and government bodies can be better informed and have a better understanding of the state of our oceans, and be able to take appropriate actions to manage and conserve them based on environmental changes.

Here, you can see what a data collection expedition may look like - for each bathymetry data point, several labels are attributed to it as a result of multiple images being taken in that region. The majority of studies use deterministic, single-output methods that require simplifying each bathymetry data point to a single label, as indicated by the coloured circles that take the most frequently occurring label within it.

However, this dilutes the information in a way that results in data loss - looking at the actual counts of different habitat labels in the range of each bathymetry point, there is actually an underlying distribution at each point that is not accounted for. 

As a result, methods that simplify the information in this way don't quite capture the full picture, and this study aims to evaluate methods not explored in existing literature to benthic habitat mapping. The first approach is to maintain the of simplification of labels, but to instead provide probabilistic output so instead of dealing with absolutes, saying a particular area is simply 'definitely sand', a probability range is given for every possible label. The second is to directly work with the distributions of labels at each point, performing multi-output predictions that do not simplify the labels counts per habitat in the original data down to only a single label.

The reason we want to do this is to be able to quantify the risk associated with any action that could be taken as a result of trusting the data presented by predictive habitat maps - and to also not discard any underlying information that can be used in the rich data source.

# Related Literature
