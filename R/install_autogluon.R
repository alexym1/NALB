#' Install Autogluon and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#'
#' @details Once Autogluon has been installed, you can activate the conda
#' environment using `use_condaenv("r-autogluon")`
#'
#' @export
install_autogluon <- function(python_version = "3.8.13") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("Installation is available for Linux only.")
  }

  if(!("r-autogluon" %in% conda_list()[,1])){

    Sys.setenv("RETICULATE_MINICONDA_PYTHON_VERSION" = python_version)

    conda_create(envname = "r-autogluon")
    use_condaenv(condaenv = "r-autogluon", required = TRUE)
    conda_install(envname = "r-autogluon", packages = "autogluon", pip = TRUE)

    message("Autokeras has been correctly installed!")
    message('Activate the conda environment with `use_condaenv("r-autogluon")`')
    message('e.i autogluon.tabular <- import("autogluon.tabular")')

  } else {

    message("Autokeras has been already installed!")
    message('Activate the conda environment with `use_condaenv("r-autogluon")`')
    message('e.i autogluon.tabular <- import("autogluon.tabular")')

  }
}


