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
  "rstd.io/wtf-explore-libraries",
  "rstd.io/wtf-packages-report",
  "rstd.io/wtf-debugging",
  "rstd.io/wtf-read-source",
  "rstd.io/wtf-startup",
  "rstd.io/wtf-source-package",
  "rstd.io/row-work"
)
if (!dir.exists(here::here("wtf"))){
  dir.create(here::here("wtf"))
}

for (exercise in exercises){
  usethis::use_course(exercise, destdir = here::here("wtf"))
}