FROM rocker/rstudio:4.4.2

# Install necessary R packages
RUN Rscript -e 'install.packages("remotes", repos="https://cloud.r-project.org/")'

RUN Rscript -e 'remotes::install_version("dplyr", version = "1.0.0")'

RUN Rscript -e 'print("R packages installed")'
