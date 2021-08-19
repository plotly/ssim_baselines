library(plotly)
library(reticulate)
library(ggplot2)
library(stringr)
library(maps)
library(usmap)
library(mapproj)
library(ggplot2movies)
library(hexbin)
library(Hmisc)
library(interp)
import("plotly")

write_plotly_image <- function(path) {
  gg = ggplotly()
  Sys.sleep(1)
  path = str_replace(path, '.R', '_plotly.png')
  print(path)
  save_image(gg, path, width=1200, height=1000) 
}

write_images <- function(r_executable){
  if(grepl('.png', r_executable, fixed=TRUE)){
    return()
  }
  out <- tryCatch({
    source(r_executable, encoding="utf-8")
    Sys.sleep(1)
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

folders = dir()

for(folder in folders){ 
  subfolders = dir(folder)
  if(folder != "Layers"){
   for(sub in subfolders){
      scripts = dir(file.path(folder,sub))
      theme_set(theme_grey())
      for(script in scripts){
        r_executable = file.path(folder,sub,script)
        write_images(r_executable)
      }
    }
  }
  else{
    print(subfolders)
    for(sub in subfolders){
      subsubfolders = dir(file.path(folder,sub))
      for(subsub in subsubfolders){
        scripts = dir(file.path(folder,sub,subsub))
        theme_set(theme_grey())
        for(script in scripts){
          r_executable = file.path(folder,sub,subsub,script)
          write_images(r_executable)
        }
      }
    }
  }
}