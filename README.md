
<!-- README.md is generated from README.Rmd. Please edit that file -->

## NALB

![](https://img.shields.io/badge/github%20version-1.0.0-green.svg)

> No AutoML Left Behind

The `NALB` package was designed to provide an R interface to the Python
autoML libraries. `NALB` runs on top of the `reticulate` package
bridging Python and R. A `Dockerfile` was provided to use autoML
libraries in production.

## Installation

You can install the development version of NALB using:

``` r
devtools::install_github("geneseng/NALB")
```

## Available autoML libraries

``` r
library(NALB)
available_automl()
#> Install conda using 'reticulate::install_miniconda()'
#>       Library          Installation
#> 1   AutoGluon   install_autogluon()
#> 2        TPOT        install_tpot()
#> 3       Flaml       install_flaml()
#> 4 Autosklearn install_autosklearn()
#>                                                                                Conda
#> 1   reticulate::use_condaenv('r-autogluon', conda = conda_binary(), required = TRUE)
#> 2        reticulate::use_condaenv('r-tpot', conda = conda_binary(), required = TRUE)
#> 3       reticulate::use_condaenv('r-flaml', conda = conda_binary(), required = TRUE)
#> 4 reticulate::use_condaenv('r-autosklearn', conda = conda_binary(), required = TRUE)
```

## Requirements

The package was configured to:

- linux systems Ubuntu 20.4 / Debian 10
- R version 4.1.0
- Python version 3.8.13
