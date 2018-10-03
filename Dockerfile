FROM r-base

RUN mkdir /sc-tools
ENV PATH="/sc-tools:${PATH}"
WORKDIR /sc-tools
RUN R -e "install.packages('devtools', repos = 'http://cran.us.r-project.org'); library(devtools); install_github('Vivianstats/scImpute')"
WORKDIR /home/docker