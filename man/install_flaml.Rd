% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_flaml.R
\name{install_flaml}
\alias{install_flaml}
\title{Install Flaml and its dependencies}
\usage{
install_flaml(python_version = "3.8.13", numpy_version = "1.24")
}
\arguments{
\item{python_version}{By default, the version is 3.8.13.}

\item{numpy_version}{By default, the version is inferior to 1.24.}
}
\description{
Install Flaml and its dependencies
}
\details{
Once Flaml has been installed, you can activate the conda
environment using `reticulate::use_condaenv("r-flaml", conda = conda_binary(), required = TRUE)`
}
