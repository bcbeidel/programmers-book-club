# How does readr::read_lines work?
readr::read_lines
#> function (file, skip = 0, n_max = -1L, locale = default_locale(),
#>     na = character(), progress = show_progress())
#> {
#>     if (empty_file(file)) {
#>         return(character())
#>     }
#>     ds <- datasource(file, skip = skip)
#>     read_lines_(ds, locale_ = locale, na = na, n_max = n_max,
#>         progress = progress)
#> }

# Hint look at the read_lines_ call

# How does rlang::quo work?

rlang::quo
#> function(expr) {
#>   enquo(expr)
#> }

# Hint look at the implementation of enquo

# Where is the development source for the 'Window Function' dplyr vignette?
# Hint use browseVignettes(package = pkg) to list vignettes from a package and
# `vignette()` to open the vignette

# Found a typo in ?ggplot2::geom_histogram, what code needs to change?
