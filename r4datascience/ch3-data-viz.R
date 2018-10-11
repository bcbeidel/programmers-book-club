###############################################################################################
# 3.2 First steps

# Package installation
install.packages('rlang')
install.packages('tidyverse')

# Import a library 
library(tidyverse)

# Plot with ggplot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))

## Data Visualiztion 3.2 First Steps: Exercises
### Q: Run ggplot(data = mpg).  Run ggplot(data = mpg). What do you see?
ggplot(data=mpg)
### A: An empty plot space, no axis, no points, nada.

### Q: How many rows are in mpg? How many columns?
dim(mpg)
### A: 234 rows, 11 columns

### Q: Make a scatterplot of hwy vs cyl.
### A:
ggplot(data=mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

### Q: What happens if you make a scatterplot of class vs drv? Why is the plot not useful.
# A: It is a scatter plot of two non-ordinal categoricals.

###############################################################################################
# 3.3 Aesthetic mappings
# An aesthetic is a visual property of the objects in your plot. 
# Aesthetics include things like the size, the shape, or the color of your points.

# Apply an aesthetic to color by class of vehicle
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# aes provdes mapping functionality for aesthetics
# read the docs...
?aes

# color is not the only option for aesthetics
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           size = class, # size of marker
                           color = class, # color of marker
                           shape =class, # shape of marker
                           alpha = class # transparency of marker
                           ))

# manually set aesthetics
# make all points blue
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# 3.3.1 Exercises: Aesthetic mappings
# 1. What’s gone wrong with this code? Why are the points not blue? 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# the mapping of a categorical 'blue' is being applied to all elements
# move the `color=blue` outside aes to apply to all points

# 2. Which variables in mpg are categorical? Which variables are continuous? 
#    (Hint: type ?mpg to read the documentation for the dataset). 
#    How can you see this information when you run mpg?
?mpg
head(mpg)
# continuous: displ (these are <dbl> type)
# discrete: year, cyl, cty, hwy (these are <int> type)
# categorical: manufacturer, model, trans, drv, fl, class these are <chr> type)

# 3. Map a continuous variable to color, size, and shape. 
#    How do these aesthetics behave differently for categorical vs. continuous variables?

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ))
# puts points on color-scale

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = displ))
# puts in discrete buckets

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = displ))
# can't be mapped to shape

# 4. What happens if you map the same variable to multiple aesthetics?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, 
                           y = hwy, 
                           size = class, # size of marker
                           color = class, # color of marker
                           shape =class, # shape of marker
                           alpha = class # transparency of marker
  ))
# It tries to apply them all... 

# 5. What does the stroke aesthetic do? What shapes does it work with? (Hint: use ?geom_point)
?geom_point
sizes <- expand.grid(size = (0:3) * 2, stroke = (0:3) * 2)
ggplot(sizes, aes(size, stroke, size = size, stroke = stroke)) + 
  geom_abline(slope = -1, intercept = 6, colour = "white", size = 6) + 
  geom_point(shape = 21, fill = "red") +
  scale_size_identity()
# size of the stroke for movement, point size is sum of size and stroke.
# https://cran.r-project.org/web/packages/ggplot2/vignettes/ggplot2-specs.html

# What happens if you map an aesthetic to something other than a variable name, 
#  like aes(colour = displ < 5)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))
# it a applies a boolean conditional to the aesthetic, points that meet conditional 
#    have different visual than points that do not meet conditional


###############################################################################################
# 3.4 Common Problems
# mismatched '', ()
# + at end of line

# wrong
ggplot(data = mpg)
  + geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))

# correct
ggplot(data = mpg) +
 geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))


###############################################################################################
# 3.5 Facets

###############################################################################################
# 3.6 Geometric Objects

###############################################################################################
# 3.7 Statistical Transformations

###############################################################################################
# 3.8 Position Adjustments

###############################################################################################
# 3.9 Coordinate Systems

###############################################################################################
# 3.10 The layered grammer of graphics