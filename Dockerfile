FROM rocker/binder

COPY .Rprofile .Rprofile
COPY install.r install.r
RUN Rscript install.r

COPY --chown=jovyan:users . ${HOME}/work

