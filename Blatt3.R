### Buch, Exercise 3.3 ###

## 1.)
library(tidyverse)
p <- ggplot(data = mpg) +
geom_point(mapping= aes(x=displ,y=hwy),colour="blue")

## 2.)
str(mpg)

## 3.)
p <- ggplot(data = mpg) +
  geom_point(mapping= aes(x=displ,y=hwy,colour=year,size=cyl,shape=class))
p + facet_grid(~drv)

## 4.)
o <- ggplot(data = mpg) +
  geom_point(mapping= aes(x=displ,y=hwy,colour=as.factor(year),size=year))

## 5.)
i <- ggplot(data = mpg) +
  geom_point(mapping= aes(x=displ,y=hwy,stroke= cyl))

## 6.)
u <- ggplot(data = mpg) +
  geom_point(mapping= aes(x=displ,y=hwy,size=displ<5))

### Excercise 3.5 ###

## 1.)
z <- ggplot(data = mpg) +
  geom_point(mapping= aes(x=displ,y=hwy))
z + facet_grid(~displ)

## 2.)
t <- ggplot(data = mpg) +
geom_point(mapping = aes(x = drv, y = cyl))
# --> Empty cells mean there are no combinations with that amount of cylinders and that drive type ##

## 3.)
u <- ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy)) +
facet_grid(.~cyl)

v <- ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy)) +
facet_grid(cyl~.)

## Die Achse entlang der gruppiert wird, wird bestimmt durch die Postion von "~." bzw ".~" ##

## 4.)
r <- ggplot(data = mpg) +
geom_point(mapping = aes(x = displ, y = hwy)) +
facet_wrap(~ class, nrow = 2)

## colour --> better for comparison between different classes
## faceting --> better for comparison within the different classe


## 6.) screen format?


### Excercises 3.6 ###

## 1.)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_line(data = filter(mpg, class == "subcompact"), se = FALSE)

## geom_+keyword (smooth for regression, hist for histogramm) ##

## 2.)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

## 3.)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point(show.legend = FALSE) + 
  geom_smooth(se = FALSE,show.legend = FALSE)

## 4.)
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
geom_point() + 
  geom_smooth(se = TRUE)

## 5.)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

## 6.) nope


### Excercise 3.7 ###

## 1.) 

ggplot(data = diamonds) + 
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

## --> ~Boxplot


## 2.)

ggplot(data = diamonds) + 
  geom_col(mapping = aes(x = cut, y = carat , group = 1))

## geom_col displays abs. frequencies of y variable grouped by x variable
## geom_bar displays rel. frequencies


## 3.) 


## 4.)

ggplot(data = diamonds) + 
  stat_smooth(aes(x = carat,y=cut))

## 5.)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..,group=TRUE))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = ..prop..,group=1))

