x <- 3*4

this_is_a_really_long_name <- 2.5
this_is_a_really_long_name <- 3.5

r_rocks <- 2^3

r_rocks

(y <- seq(1,10))

#Practice Excercises
library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)


ggplot(data = filter(mpg, cyl == 8)) + 
  geom_point(mapping = aes(x = displ, y = hwy))

filter(diamonds, carat  > 3)