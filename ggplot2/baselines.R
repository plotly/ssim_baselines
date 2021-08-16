library(plotly)
library(reticulate)
library(ggplot2)
library(stringr)
import("plotly")

write_plotly_image <- function(path) {
  gg = ggplotly()
  path = str_replace(path, '.R', '_plotly.png')
  print(path)
  save_image(gg, path, width=1200, height=1000) 
}

folders = dir()

for(folder in folders){ 
  subfolders = dir(folder)
  for(sub in subfolders){
    scripts = dir(file.path(folder,sub))
    for(script in scripts){
      theme_set(theme_grey())
      r_executable = file.path(folder,sub,script)
      out <- tryCatch({
        source(r_executable)
        ggsave(
          str_replace(r_executable, '.R', '_ggplot2.png'),
          width=1200,
          height=1000,
          units='px',
          dpi = 100
        )
        write_plotly_image(r_executable)
        },error=function(cond) {
          message(cond);
          message(r_executable)
        },
        warning=function(cond) {
          message(cond);
          message(r_executable)        
        }
      )
    }
  }
}