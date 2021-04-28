# PITcleanr

## Description

The PITcleanr package was developed to help query and compile the necessary data to fit a DABOM model (**D**am **A**dult **B**ranch **O**ccupancy **M**odel) to estimate adult escapement to various tributaries or locations above a tagging location. A key assumption of a DABOM model is that fish travel along a single upstream route. Therefore, the model will fail if presented with detections by a single fish in multiple tributaries above a branching node. PITcleanr is designed to help clean the PIT tag detection data to identify non-linear upstream pathways and help the user determine which observations to keep. It also summarises final spawning location, and in the case of the Snake River DABOM model, can be combined with biological data from the Lower Granite adult fish trap database for fish tagged there.

## Installation instructions

PITcleanr requires several packages that are available through the [tidyverse](https://www.tidyverse.org/) package. You can install all the necessary tidyverse packages by using:

```{r}
install.packages("tidyverse")
```

To install PITcleanr you can use Hadley Wickham's `devtools` package. To install and load the devtools package use:

```{r}
install.packages("devtools")
library(devtools)
```

Once devtools is successfully installed, use the following to install PITcleanr:

`devtools::install_github("KevinSee/PITcleanr", build_vignettes = TRUE)`

Be sure to use the `build_vignettes = TRUE` argument, as this will build all of the vignettes (i.e., user manuals) that are included with the package. Further instructions on how to use PITcleanr can be found in the package vignettes, which can be accessed using:

```{r}
browseVignettes(package = "PITcleanr")
```

## Authors

PITcleanr is a collaborative project, with the primary contributors being:

* Kevin See (Biomark, Inc. - Applied Biological Services)
* Ryan N. Kinzer (Nez Perce Tribe - Fisheries Resources Management)
* Rick Orme (Nez Perce Tribe - Fisheries Resources Management)
* Mike Ackerman (Biomark, Inc. - Applied Biological Services)

## Developers Note

To use `devtools` you may also have to download and install Rtools. The latest version of Rtools can be found [here](https://cran.r-project.org/bin/windows/Rtools/).

## Making Contributions

If you are interested in making contributions to PITcleanr, consider getting a GitHub account, fork this repository, clone to a local directory, modify, and send us a pull request. The authors can then review any changes and merge.

## Questions?

Please feel free to post an issue to this repository for requested features, bug fixes, errors in documentation, etc.

