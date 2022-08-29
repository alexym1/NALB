# https://stackoverflow.com/questions/73391888/running-the-r-package-reticulate-in-docker-environment

write(
  x = "reticulate::use_condaenv(\"r-pycaret\", required = TRUE)",
  file = file.path(R.home(),"etc","Rprofile.site"),
  append = TRUE
)


write(
  x = "reticulate::import(\"pycaret\")",
  file = file.path(R.home(),"etc","Rprofile.site"),
  append = TRUE
)
