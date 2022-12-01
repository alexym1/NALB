#' List of available autoML libraries
#'
#' @export
available_automl <- function() {

  df <- data.frame(
    Library = c(
      "AutoGluon",
      "AutoKeras",
      "PyCaret",
      "TPOT"
    ),
    Installation = c(
      "install_autogluon()",
      "install_autokeras()",
      "install_pycaret()",
      "install_tpot()"
    ),
    Conda = c(
      "reticulate::use_condaenv('r-autogluon', conda = conda_binary(), required = TRUE)",
      "reticulate::use_condaenv('r-autokeras', conda = conda_binary(), required = TRUE)",
      "reticulate::use_condaenv('r-pycaret', conda = conda_binary(), required = TRUE)",
      "reticulate::use_condaenv('r-tpot', conda = conda_binary(), required = TRUE)"
    )
  )

  message("Install conda using 'reticulate::install_miniconda()'")

  return(df)

}


