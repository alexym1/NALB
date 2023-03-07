#' Install Flaml and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#' @param numpy_version By default, the version is inferior to 1.24.
#'
#' @details Once Flaml has been installed, you can activate the conda
#' environment using `reticulate::use_condaenv("r-flaml", conda = conda_binary(), required = TRUE)`
#'
#' @export
install_flaml <- function(python_version = "3.8.13", numpy_version = "1.24") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("Installation is available for Linux only.")
  }

  if(!("r-flaml" %in% conda_list()[,1])){

    python <- paste("python", python_version, sep = "=")
    numpy <- paste("numpy", numpy_version, sep = "<")

    conda_create(envname = "r-flaml", packages = c(python, numpy))
    conda_install(envname = "r-flaml", packages = "flaml", pip = TRUE)

  }

  message("Flaml has been correctly installed!")
  message('Activate the conda environment with `reticulate::use_condaenv("r-flaml", conda = conda_binary(), required = TRUE)`')
  message('e.i flaml <- reticulate::import("flaml")')

}
