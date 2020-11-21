#' In a temporary library, do the following.
## Before each installation restart R to avoid errors due to having the
## previous version installed.

tmp_lib <- "/tmp/my-library"
dir.create(tmp_lib)

#' Install the ps _source_ package from CRAN
## Hint: use `install.packages()` `type` argument
install.packages("ps", type = "source", lib = tmp_lib)
packageVersion("ps")

#' Load the package from the temporary library and try running `ps()`
library(ps, lib.loc = tmp_lib)
ps()

#' Install the develpment version of the ps package
devtools::install_dev("ps", lib = tmp_lib)

# Or use
devtools::install_github("r-lib/ps", lib = tmp_lib)

packageVersion("ps")

#' Install version 1.2.0 of the ps package from CRAN
devtools::install_version("ps", "1.2.0", lib = tmp_lib)
library(ps, lib.loc = tmp_lib)
sessioninfo::package_info("ps")

packageVersion("ps")

#' Stretch goal
## If that went well try installing the source version of git2r.
## git2r has more complicated dependencies and takes longer to compile, but
## it should install without problems
