#' Working with the .Renviron file

## We will be editing the .Renviron to make R be strict about checking
## conditions with length greater than 1.

## The following function from the `usethis` package may be helpful for this:
- usethis::edit_r_environ()

#' As an example, take the following vector and check if the values are > 0.
x <- c(1, -2)

#' Write an if-statement that prints "Positive" if x is greater than 0
## and "Negative" if it's < 0. You will see a warning; that is ok!

## if ( # <some condition>) {
##   # <something here>
## } else if ( # <some other condition>) {
##   # <something here>
## }

#' Edit your .Renviron
## Add the following: _R_CHECK_LENGTH_1_CONDITION_=true

#' Restart R

#' Run the code to print Positive/Negative again
