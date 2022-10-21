FROM rocker/r-ver

RUN apt-get update && \
  apt-get install -y librsvg2-bin libpng-dev libjpeg-dev libfreetype6-dev libglu1-mesa-dev libgl1-mesa-dev pandoc zlib1g-dev libicu-dev libgdal-dev gdal-bin libgeos-dev libproj-dev libmagick++-dev libcurl4-openssl-dev libssl-dev libssh2-1-dev libxml2-dev zlib1g-dev && \
  R -e "install.packages(c('devtools', 'testthat', 'roxygen2'))"

RUN R -e "devtools::install_github('ebenmichael/augsynth')"
RUN R -e "devtools::install_github('chadhazlett/KBAL')"
RUN R -e "devtools::install_github('xuyiqing/tjbal')"
RUN R -e "install.packages('AER')"
RUN R -e "install.packages('did')"
RUN R -e "install.packages('rsvg')"

RUN R -e "install.packages('rayshader')"
RUN R -e "install.packages('magick')"
RUN R -e "install.packages('languageserver')"

WORKDIR /home/app
COPY rs_mwe.r /home/app/rs_mwe.r
RUN Rscript rs_mwe.r
