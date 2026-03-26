FROM rocker/binder

COPY install.r install.r
RUN Rscript install.r

COPY --chown=jovyan:users . ${HOME}/work
