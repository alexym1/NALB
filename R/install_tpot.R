#' Install TPOT and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#' @param numpy_version By default, the version is inferior to 1.24.
#'
#' @details Once TPOT has been installed, you can activate the conda
#' environment using `reticulate::use_condaenv("r-tpot", conda = conda_binary(), required = TRUE)`
#'
#' @export
install_tpot <- function(python_version = "3.8.13", numpy_version = "1.24") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("Installation is available for Linux only.")
  }

  if(!("r-tpot" %in% conda_list()[,1])){

    python <- paste("python", python_version, sep = "=")
    numpy <- paste("numpy", numpy_version, sep = "<")

    conda_create(envname = "r-tpot", packages = c(python, numpy))
    conda_install(envname = "r-tpot", packages = "tpot", pip = TRUE)

  }

  message("TPOT has been correctly installed!")
  message('Activate the conda environment with `reticulate::use_condaenv("r-tpot", conda = conda_binary(), required = TRUE)`')
  message('e.i TPOTClassifier <- reticulate::import("tpot")$TPOTClassifier')
  message('e.i TPOTRegressor <- reticulate::import("tpot")$TPOTRegressor')

}
