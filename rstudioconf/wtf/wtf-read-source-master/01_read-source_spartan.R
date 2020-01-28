print(mtcars, print.gap = -1)
#> Error in print.default(m, ..., quote = quote, right = right) :
#>  'gap' must be non-negative integer

# Where is this error occurring in the R source?

# What about if you are using translated error messages?

Sys.setenv("LANG"="es")
print(mtcars, print.gap = -1)
#> Error in print.default(m, ..., quote = quote, right = right) :
#>   'gap' debe ser un entero no negativo

# When was the `trimws` function added to base R?

# How does `is.na()` work?
