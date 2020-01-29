animals <- c("cat", "dog")
legs    <- c(4,      3)
output <- glue::glue("{animals} has {legs} legs")

library(repurrrsive)
x <- repurrrsive::got_chars
# how many elements are in got_characters
length(x)

## Who is the 9th person listed in got_chars?
# Daenerys Targaryen
x[[9]]
## What information is given for this person?
# - Female
# - Valyrian


## What is the difference between got_chars[9] and got_chars[[9]]?
# got_chars[9]
# list of one, within it a list of 18
str(x[9])
# Nested elements
# got_chars[[9]]
# list of 18
str(x[[9]])

length(got_chars[[1]]$aliases)
## What is the length of each GoT character's aliases?
purrr::map(got_chars, ~ length(.x[["aliases"]]))


## How many x does each (GoT or SW) character have?
## (x = 3 titles, allegiances, vehicles, starships)

## Replace map() with type-specific
# What's each character's name?
map_chr(got_chars, ~.x[["name"]])
map_chr(sw_people, ~.x[["name"]])

# What color is each SW character's hair?
map_chr(sw_people, ~ .x[["hair_color"]])

# Is the GoT character alive?
map_lgl(got_chars, ~ .x[["alive"]])

# Is the SW character female?
map_lgl(sw_people, ~ .x[["gender"]] == "female")

# How heavy is each SW character?
map_chr(sw_people, ~ .x[["mass"]])
map_dbl(sw_people, ~ readr::parse_number(.x[["mass"]]))

# hint to self: readr::parse_number

## Explore a GoT or SW list and find a new element to look at
## Extract it across the whole list with name and position shortcuts for .f
## Use map_TYPE() to get an atomic vector as output
purrr::map(got_chars, ~ .x[["tvSeries"]])


## What if the thing you are extracting is not there or
## length 0 or of lenght > 1?
purrr::map(got_chars, ~ .x[["areKing"]])



## Names make life nicer!
got_chars_named <- set_names(got_chars, map_chr(got_chars, "name"))
View(got_chars_named)

got_chars_named %>%
  map_lgl("alive")

## Challenge:
## Create a named copy of a GoT or SW list with set_names().
sw_species <- set_names(sw_species, map_chr(sw_species, "name"))
## Find an element with tricky presence/absence or length.
sw_species %>%
  map_chr("classification")
## Extract it many ways:
## - by name
## - by position
## - by list("name", pos) or c(pos, pos)
## - use .default for missing data
## - use map_TYPE() to coerce output to atomic vector
got_chars_named %>%
  map("books") %>%
  map_int(length) %>%
  table()


## Challenge (pick one or more):

##  Which SW film has the most characters?
#View(sw_films)
sw_films %>%
  set_names(., map_chr(., "title")) %>%
  purrr::map_int(.x = ., .f = ~ length(.x[["characters"]]))

## I think it's Attack of the Clones?

##  Which SW species has the most possible eye colors?
library(tidyverse)

##  Which GoT character has the most allegiances? Aliases? Titles?
got_chars %>%
  set_names(., map_chr(., "name")) %>%
  map_int(.x = ., .f = ~ length(.x["allegiances"])) %>%
  tibble::enframe() %>%
  dplyr::arrange(desc(value))

got_characters_arranged_by_count_of <- function(df, value){
  df %>%
  set_names(., map_chr(., "name")) %>%
    map_int(.x = ., .f = ~ length(.x[[value]])) %>%
    tibble::enframe() %>%
    dplyr::arrange(desc(value))
}

got_chars %>% got_characters_arranged_by_count_of("allegiances")
# Brienne of Tarth @ 3
got_chars %>% got_characters_arranged_by_count_of("aliases")
# Arya Stark @ 16
got_chars %>% got_characters_arranged_by_count_of("titles")
# Daenerys Targaryen, Cersei Lannister, Eddard Stark @ 5
##  Which GoT character has been played by multiple actors?
got_chars %>% got_characters_arranged_by_count_of("playedBy")
# Eddard Start

## walk
## No return value, calling it for the side effects

