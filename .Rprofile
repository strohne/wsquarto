setHook(
  "rstudio.sessionInit",
  function(newSession) {
    if (newSession && is.null(rstudioapi::getActiveProject()))
    rstudioapi::openProject("/home/jovyan/work/wsquarto.Rproj")
  },
  action = "append"
)
