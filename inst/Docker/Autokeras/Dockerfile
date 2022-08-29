FROM rocker/r-ver:4.1.0

## Install R packages
RUN R -q -e 'install.packages("remotes")'
RUN R -q -e 'remotes::install_github("rstudio/reticulate")'

# Install AutoKeras
RUN R -q -e 'reticulate::install_miniconda()'
RUN R -q -e 'reticulate::conda_create(envname = "r-autokeras", packages = c("python=3.8.13", "numpy"))'
RUN R -q -e 'reticulate::conda_install(envname = "r-autokeras", packages = "autogluon", pip = TRUE)'


# Modify Rprofile
COPY requirements.R requirements.R
RUN R -e 'source(file = "requirements.R")'

EXPOSE 3838

# Add code
# [...]

# Run in shell
# sudo docker build -t demo-autokeras .
# sudo docker run --rm -p 3838:3838 demo-autokeras
