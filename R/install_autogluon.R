#' Install Autogluon and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#' @param numpy_version By default, the version is inferior to 1.24.
#'
#' @details Once Autogluon has been installed, you can activate the conda
#' environment using `reticulate::use_condaenv("r-autogluon", conda = conda_binary(), required = TRUE)`
#'
#' @export
install_autogluon <- function(python_version = "3.8.13", numpy_version = "1.24") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("The installation is only available for Linux.")
  }

  if(!("r-autogluon" %in% conda_list()[,1])){

    python <- paste("python", python_version, sep = "=")
    numpy <- paste("numpy", numpy_version, sep = "<")

    conda_create(envname = "r-autogluon", packages = c(python, numpy))
    conda_install(envname = "r-autogluon", packages = "autogluon", pip = TRUE)

  }

  message("AutoGluon has been correctly installed!")
  message('Activate the conda environment with `reticulate::use_condaenv("r-autogluon", conda = conda_binary(), required = TRUE)`')
  message('e.i autogluon.tabular <- reticulate::import("autogluon.tabular")')

}
