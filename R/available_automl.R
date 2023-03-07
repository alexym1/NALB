#' List of available autoML libraries
#'
#' @export
available_automl <- function() {

  df <- data.frame(
    Library = c(
      "AutoGluon",
      "TPOT",
      "Flaml",
      "Autosklearn"
    ),
    Installation = c(
      "install_autogluon()",
      "install_tpot()",
      "install_flaml()",
      "install_autosklearn()"
    ),
    Conda = c(
      "reticulate::use_condaenv('r-autogluon', conda = conda_binary(), required = TRUE)",
      "reticulate::use_condaenv('r-tpot', conda = conda_binary(), required = TRUE)",
      "reticulate::use_condaenv('r-flaml', conda = conda_binary(), required = TRUE)",
      "reticulate::use_condaenv('r-autosklearn', conda = conda_binary(), required = TRUE)"
    )
  )

  message("Install conda using 'reticulate::install_miniconda()'")

  return(df)

}


