#' List of available autoML libraries
#'
#' @export
available_automl <- function() {

  df <- data.frame(
    Library = c("AutoGluon", "AutoKeras", "PyCaret"),
    Installation = c("install_autogluon()", "install_autokeras()", "install_pycaret()"),
    Conda = c("use_condaenv('r-autogluon')", "use_condaenv('r-autokeras')", "use_condaenv('r-pycaret')")
  )
  message("Install conda using 'install_miniconda()'")

  return(df)

}


