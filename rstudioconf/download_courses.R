if(!require(usethis)) install.packages("usethis")
if(!require(here)) install.packages("here")

#'  Resources:
#'  
#'  Book: https://rstats.wtf/
#'  RstudioConf::2020 https://github.com/rstudio-conf-2020/what-they-forgot 
#' 
#'  Interactive Exercises
#'  
#'  Other Notable Resources
#'  - (r package) here -- A simpler way to find your files: https://github.com/r-lib/here
#'  - R Startup files: https://rstats.wtf/r-startup.html
#'  - Debugging Code: https://rstats.wtf/debugging-r-code.html
#'  - Read-Only Mirror Of CRAN on GitHub: https://github.com/cran
#'  - Reproducible Environments Docs: https://environments.rstudio.com/
#'  
#'  

exercises <- c(
  "wtf-explore-libraries",
  "wtf-packages-report",
  "wtf-debugging",
  "wtf-read-source",
  "wtf-startup",
  "wtf-source-package"
)
if (!dir.exists(here::here("wtf"))){
  dir.create(here::here("wtf"))
}

for (exercise in exercises){
  usethis::use_course(file.path("rstd.io", exercise), destdir = here::here("wtf"))
}