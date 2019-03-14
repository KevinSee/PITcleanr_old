#' @title Upstream path
#'
#' @description For a given site, uses the configuration file to determine which path (through which sites) must be taken from the \code{rootSite} to reach that site.
#'
#' @author Kevin See
#'
#' @inheritParams findDwnStrmSite
#'
#' @import dplyr stringr
#' @return NULL
#' @examples

getUpStrmPath = function(site, configurationFile, include.MMR.sites = F, rootSite = 'GRA') {

  sitePath = NULL
  dwnStrmSite = findDwnStrmSite(site,
                                configurationFile,
                                include.MMR.sites = include.MMR.sites,
                                rootSite = rootSite)
  sitePath = c(site, dwnStrmSite) %>%
    unique()

  while(sum(grepl(rootSite, sitePath)) == 0) {
    dwnStrmSite = findDwnStrmSite(dwnStrmSite,
                                  configurationFile,
                                  include.MMR.sites = include.MMR.sites,
                                  rootSite = rootSite)
    sitePath = c(sitePath, dwnStrmSite)
  }
  pathToSite = sitePath %>%
    rev %>%
    paste(collapse = '.')
  return(pathToSite)
}
