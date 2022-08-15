#' Install PyCaret and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#'
#' @details Once Pycaret has been installed, you can activate the conda
#' environment using `use_condaenv("r-pycaret")`
#'
#' @export
install_pycaret <- function(python_version = "3.8.13") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("Installation is available for Linux only.")
  }

  if(!("r-pycaret" %in% conda_list()[,1])){

    Sys.setenv("RETICULATE_MINICONDA_PYTHON_VERSION" = python_version)

    conda_create(envname = "r-pycaret")
    use_condaenv(condaenv = "r-pycaret", required = TRUE)
    conda_install(envname = "r-pycaret", packages = "pycaret", pip = TRUE)

    message("PyCaret has been correctly installed!")
    message('Activate the conda environment with `use_condaenv("r-pycaret")`')
    message('e.i pycaret.classification <- import("pycaret.classification")')

  } else {

    message("PyCaret has been already installed!")
    message('Activate the conda environment with `use_condaenv("r-pycaret")`')
    message('e.i pycaret.classification <- import("pycaret.classification")')

  }

}


