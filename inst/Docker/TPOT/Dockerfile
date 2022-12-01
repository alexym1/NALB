FROM rocker/r-ver:4.1.0

## Install R packages
RUN R -q -e 'install.packages("remotes")'
RUN R -q -e 'remotes::install_github("rstudio/reticulate")'
RUN R -q -e 'remotes::install_github("geneseng/NALB")'

# Install Autogluon
RUN R -q -e 'reticulate::install_miniconda()'
RUN R -q -e 'NALB::install_tpot()'

EXPOSE 3838

# Add code
# [...]

# Run in shell
# sudo docker build -t demo-tpot .
# sudo docker run --rm -p 3838:3838 demo-tpot
