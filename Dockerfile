FROM rocker/binder

COPY install.r install.r
RUN Rscript install.r

COPY --chown=jovyan:users . ${HOME}/work

RUN echo 'setHook("rstudio.sessionInit", function(newSession) { if (newSession && is.null(rstudioapi::getActiveProject())) rstudioapi::openProject("/home/jovyan/work/wsquarto.Rproj") }, action = "append")' > /home/jovyan/.Rprofile
