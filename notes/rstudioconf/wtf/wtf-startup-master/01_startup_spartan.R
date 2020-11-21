#' Working with the .Renviron file

## We will be editing the .Renviron to make R be strict about checking
## conditions with length greater than 1.

## There is a function in the usethis package to edit your .Renviron.

#' As an example, take the following vector and check if the values are > 0.
x <- c(1, -2)

#' Write an if-statement that prints "Positive" if x is greater than 0
## and "Negative" if it's < 0. You will see a warning; that is ok!

#' Edit your .Renviron
## Add the following: _R_CHECK_LENGTH_1_CONDITION_=true

#' Restart R

#' Run the code to print Positive/Negative again
