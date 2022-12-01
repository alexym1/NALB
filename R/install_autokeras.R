#' Install AutoKeras and its dependencies
#'
#' @param python_version By default, the version is 3.8.13.
#'
#' @details Once Autokeras has been installed, you can activate the conda
#' environment using `reticulate::use_condaenv("r-autokeras", conda = conda_binary(), required = TRUE)`
#'
#' @export
install_autokeras <- function(python_version = "3.8.13") {

  if(Sys.info()["sysname"] != "Linux"){
    stop("The installation is only available for Linux.")
  }

  if(!("r-autokeras" %in% conda_list()[,1])){

    python <- paste("python", python_version, sep = "=")

    conda_create(envname = "r-autokeras", packages = c(python, "numpy"))
    conda_install(envname = "r-autokeras", packages = "autokeras", pip = TRUE)

  }

  message("Autokeras has been correctly installed!")
  message('Activate the conda environment with `reticulate::use_condaenv(condaenv = "r-autokeras", conda = conda_binary(), required = TRUE)`')
  message('ak <- reticulate::import("autokeras")')

}


