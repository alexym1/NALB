#' Install PyCaret and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#'
#' @details Once Pycaret has been installed, you can activate the conda
#' environment using `reticulate::use_condaenv("r-pycaret", conda = conda_binary(), required = TRUE)`
#'
#' @export
install_pycaret <- function(python_version = "3.8.13") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("Installation is available for Linux only.")
  }

  if(!("r-pycaret" %in% conda_list()[,1])){

    python <- paste("python", python_version, sep = "=")

    conda_create(envname = "r-pycaret", packages = c(python, "numpy"))
    conda_install(envname = "r-pycaret", packages = "pycaret", pip = TRUE)

  }

  message("PyCaret has been correctly installed!")
  message('Activate the conda environment with `reticulate::use_condaenv(condaenv = "r-pycaret", conda = conda_binary(), required = TRUE)`')
  message('e.i pycaret.classification <- reticulate::import("pycaret.classification")')

}


