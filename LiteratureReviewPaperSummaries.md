How?
What? (areas/topics)
What? (approach)
Where?
Why? (confirm or rejecte previous results)

Critical (reference to the work of others, combined with evaluative language) > 
Argumentative (reference to claims + Reason + evidence structure) > 
Analytical (abstract terms, languageo show relationships, clear structure of ideas) > 
Descriptive (concrete terms such as names/dates, reference to journal articles)

# Classification With Probabilistic Targets - Asher Bender et al., 2012
* unsupervised clustering model
* Gaussian process classifier that accepts probabilistic training targets
* unsupervised variational Dirichlet process (VDP) model
* Bayesian, non-parametric
* non-parametric; Gaussian processes make no modeling assumptions, effective black-box model
* expectation propagation is considered state of the art and the method of choice for producing accurate posteriors
* in Probabilistic Least Squares Classification, classification is treated as a regression problem
* minimising MSE (mean squared error) is chosen as the better objective function to preserving the shape of the PTLSC (probabilistic targets least squares classification) latent function
* all models achieve a similar label accuracy
* 14154 images clustered using an unsupervised VDP model
* repeated random sub-sampling validation used - subset of data is randomly selected, and remaining data used for validation
* when the cluster probabilities convey more information than the cluter labels, the PTLSC is better at producing a predictive distribution which reflects the probabilistic cluster assginments

# Benthic habitat mapping: A review of progress towards improved understanding of the spatial ecology of the seafloor using acoustic techniques
* only recently through developments in acoustic survey technologies, that marine scientists have been able to begin matching quality and resolution of terrestrial mapping efforts in the marine realm
* process of producing seafloor habitat maps cuts across discplines of marine biology, ecology, geology, hydrography, oceanography and geophysics
* marine habitat mapping: 'the use of spatially continuous environmental data sets to represent and predict biological patterns on the seafloor (in a continuous and discontinuous manner)
* for production of any form of benthic habitat map, we need continuous coverage environmental data layers and in situ (habitat) sample data of some form
* acoustic survey methods are routinely use to collect information on the geomorphological characteristics of the seafloor
* acoustic survey methods most widely used for habitat mapping: 
    1. single-beam, acoustic ground discrimination systems (SB-AGDS)
    2. sidescan sonar systems (SSS)
    3. Multibeam echosounders (MBES)
* important first step in production of benthic habitat map is to organise the enviornmental data into a suitable format for integration with the in situ habitat information
* acoustic backscatter data are by far the most widely used form of remote-sensed data for habitat characterisation and mapping
* benthic ecosystems not only influenced by physical characteristics of the seafloor, but also storngly affected by overlying water column conditions
* possible to use patterns in overlying water column to predict likely distribution of biological characteristics
* issue - whether or not discrete communities exist versus continua in individual species' distributions that lead to perceived assemblage structures - has long been debated in a wide range of ecological systems
* community patterns offshore tend to be less predictable due to absence of strong abiotic [defn: physical rather than biological] changes caused by tidal fluctuations
* Fraschetti et al. (2008) suggested that marine classification schemes over the past 50 years are either too vague (referring to mainly geological features of the seafloor), or too detailed (referring to biodiversity at the species level)
    + often to not consider natural season variation in assemblage structure for effective implementation of conservation initiatives
* care should be taken when inefrring biological patterns on the seafloor - rarely 1-1 relationships between abioitic maps at this [?] scale and species/community distribution patterns
    + broad-scale maps of abiotic features are not habitat maps, and only become so with the addition of biological data
* map production
    + more recent studies have started to evaluate more complex statistical approaches
    + also turns to methods such as species distribution modeling (SDM) or community level modeling, developed from terrestrial research, with very promising results
    + Strategy 1 abiotic surrogates (unsupervised classification - limited or no ground validation) - involves little or no *in situ* ground truthing, and usually applied at a broad-scale, successfully used over continental shelf regions
    + Strategy 2 assemble first, predict later (unsupervised classification) - most common strategy reprsented in literature over the past decade (2001-2011), takes a top-down approach whereby environmental data and *in situ* biological/geological data are organised before they are combined (unsupervised classification strategy)
    + Strategy 3 predict first, assemble later (supervised classification) - theoretically possible to generate commmunity maps using this approach by producing single species habitat maps one at a time, then combining the resulting stack of species distribution maps to produce a community distribution map
* conclusions
    + only 5-10% of the world's seafllor mapped at a resolution of similar terrestrial studies
    + help to address important ecological questions pertaining to animal-environment interactions, and facilitate our ability to manage benthic ecosystems effectively through the implementation of Ecosystem Based Management (EBM)

# An evaluation of supervised and unsupervised classification techniques for marine benthic habitat mapping using multibeam echosounder data
* video ground-truth data with a camera footprint of 1m^2
* classified to level 4 of the European Nature Information System habitat classification scheme
* Bathymetric derivatives - eastness, northness, slope, topographic roughness index, vector rugosity measure, two measures of curvature were created
* accuracy of the supervised habitat maps was assessed using total agreement, quantity disagreement, allocation disagreement
* agreement in unsupervised maps assessed using Cramer's V coefficient
* in unsupervised classification, acoustic data are segmented before being assigned in a habitat type identified from ground-truth observations made by camera or physical sampling - traditionally been most common method of conducting habitat benthic habitat mapping
* multibeam echosounds (MBES) are an increasingly common source of acoustic data for benthic habitat mapping
* relationships have been observed and reported between marine substrata and benthic community structure
* backscatter data may have capacity to be a useful proxy for abiotic classification of marine benthic habitats
* easy-to-implement maximum likelihood and ISO cluster classifiers found in most GIS packages used for both supervised and unsupervised classification techniques
* **primary objective** - evaluate outputs of supervised classifications and unsupervised classifications given different sets of input data
* study area ranges from 15m below chart datum in NW to 30m in SE, over a distance of 16km
* video ground-truth survey - stations predetermined independently of MBES data - greater independence of the two datasets, more robust statistical comparison of the final habitat maps
* ISO Cluster algorithm in ArcGIS - larger numbers of iterations had negligible effect on clustering results with significant increases in computing time
* *quantity disagreement* is 'the amount of difference between the reference data and a comparison map that is due to the less than perfect match in the proportions of the categories'
* *allocation disagreement* is the 'amount of difference between reference data and a comparison map that is due to less than optimal match in the spatial allocation of the categories, given proportions of categories in the reference and comparison maps'
* **agreement assessments**
    + pairwise tests carried out for each of nine variables to identify the pairs causing differences
    + bathymetry, backscatter, TRI, and slope discriminate  ground-truth classes in at least 9 of 10 pairwise tests
    + these 4 variables subsequently subject to PCA
* Kostylev (2012) states that there is an urgent need for a change in how data for marine habitat mappings are sampled and interpreted, and suggest that acoustic backscatter alone should not form the sole basis for inferring benthic habitat nor directing sampling effort
* EUNIS habitat classification scheme has successfully been applied in low-resolution, broad-scale mapping projects
* for higher resolution MBES data used, it was found that some of the EUNIS habitat codes did not provide sufficnet allowances for discriminating areas of seabed
* class-wise assessment of unsupervised outputs in this study reveals that the unsupervised method is optimal for distinguishing coarse substrata and poorer at distinguishing soft substrata when using bathymetric derivatives alone
* it is recommended that more investigations are carried out to assess variability due to the types of input data, the resolution of the input data, and the classifier used to generate the map

# A multi-method approach for benthic habitat mapping of shallow coastal areas with high-resolution multibeam data
* 28km^2 area of Maltese coastal waters
* three datasets
    + MBES bathymetry and backscatter data
    + remotely operated vehicle imagery
    + photographs and sediment samples from dive surveys
* reasons for MBES popularity
    + continuous acoustic coverage of large swathes of seafloor
        - in comparison, sampling/diving cover siginficantly smaller areas, and are less cost effective
    + recent developments in marine acoustic technology have allowed MBES to match or supersede other conventional acoustic survey systems
        - e.g. single beam echosounder, side scan sonar
* Manual segmentation is inhererently subjective, slow, and potentially inaccurate (Cutter Jr et al. 2003)
* reasons for choosing study area:
    + known to host a variety of seabed morphologies and substrate types
    + area falls within a Special Area of Conservation of International Importance under the EC Habitats Directive
    + prone to extensive human disturbance - popular tourist area, dense urban settlements on shore, busy recreational boating routes, vessel bunkering zones, fish farm
        - sites earmarked for potential wind farm/aquacultural zone offshore
* **Method**
    + bathymetric data categorised into five morphological zones - flat and sloping, crests, depressions, and breaks of slope
    + segmentation of seabed into classes by first segmenting sediment samples by median grain size and Wentworth scale
    + classified bathymetric data into different roughness zones in order to segment each roughness zone into seabed composition classes separately
    + two main methods to classify seabed into four main composition classes
        - unvegetated smooth zones
        - seagrass covered seabed rough zones
    + seabed morphology and composition maps combined into a single habitat map sing combine function in ArcGIS
* misclassification of habitats and linear artefacts occur occasionally, particularly where data are characterised by noise or gaps
* **Discussion**
    + segmented study area into twelve habitats
    + benefits of method:
        - reduces operator bias, ensures consistency of classification results
        - causes negligible distrubance to seabed
        - does not require considerable computer processing power, decreases time and cost of data interpretation
        - mainly implemented in a GIS environment, allows further spatial and statistical analyses
    + their approach, in contrast to some mentioned prev studies, builds on the premise that since seabed morphology and composition are so variable, the techniques used to classify them should be adaptable
    + simple, and does not require specialised data processing (e.g. neural networks Marsh and Brown 2009)
    + distinguishes seagrass covered areas and classifies them on the basis of substrates
    + extracts geological lineaments and discontinuities, in addition to zones of similar habitats
    + limitation of method is difficulty in discriminating between coarse sand and gravel from maerl associated with sand and gravel

# Clustering Sensor Data for Terrain Identification using a Windowless Algorithm
* for ground terrain identification, measurements from things like accelerometers can be used as features

# Benthic habitat mapping from seabed acoustic surveys: do implicit assumptions hold? Kostylev 2012
* two major groups of assumptions:
    + confidently interpret properties of surficial sediments
    + derived textural/morphological classes are relevant to seabed ecology
* the uncertainty behind these assumptions may render resulting habitat maps ineffective
