library(tidyverse)

#Cars 
ggplot2::mpg

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy), color="blue")


ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, color=cty))

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, alpha=cty))

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, shape=cty))

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ, y=hwy, colour = displ < 5))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 3)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

#Diamonds
ggplot2::diamonds

?geom_col
?stat_summary

ggplot(diamonds, aes(cut)) +
    stat_summary_bin(aes(y = price), geom = "bar")

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..,group=1))
