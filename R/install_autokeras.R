#' Install AutoKeras and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#'
#' @details Once Autokeras has been installed, you can activate the conda
#' environment using `use_condaenv("r-autokeras")`
#'
#' @export
install_autokeras <- function(python_version = "3.8.13") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("Installation is available for Linux only.")
  }

  if(!("r-autokeras" %in% conda_list()[,1])){

    python <- paste("python", python_version, sep = "=")

    conda_create(envname = "r-autokeras", packages = c(python, "numpy"))
    use_condaenv(condaenv = "r-autokeras", required = TRUE)
    conda_install(envname = "r-autokeras", packages = "autokeras", pip = TRUE)

    message("Autokeras has been correctly installed!")
    message('Activate the conda environment with `use_condaenv("r-autokeras")`')
    message('ak <- import("autokeras")')

  } else {

    message("Autokeras has been already installed!")
    message('Activate the conda environment with `use_condaenv("r-autokeras")`')
    message('ak <- import("autokeras")')

  }

}


