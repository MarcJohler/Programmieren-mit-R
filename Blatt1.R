# Kurstermin 24.04.2019 - Kapitel 1

############
## Aufgabe 1.1

sex <- factor(c("männlich","weiblich","weiblich","männlich","männlich"),levels=c("männlich","weiblich"))

## Aufgabe 1.2

table(sex)

## Aufgabe 1.3

levels(sex) <- c("male","female")


str(sex)


############# 
## Aufgabe 2.1

car_speed <- c("normal","langsam","langsam","normal","schnell")


## Aufgabe 2.2

car_speed_ordered <- factor(car_speed,levels=c("langsam","normal","schnell"),ordered=TRUE)
levels(car_speed_ordered) <- c("slow","medium","fast")



############# 
## Aufgabe 3

mymatrix <- matrix(1:9,3,3,byrow=TRUE)



############# 
## Aufgabe 4.1

nameslist <- list(vornamen = c("Hans","Peter"),nachnamen = c("Maier","Maier"))

## Aufgabe 4.2

nameslist[2]

## Aufgabe 4.3

nameslist[[1]][1]

## Aufgabe 4.4

namesdataframe <- as.data.frame(nameslist)


############# 
## Aufgabe 5.1

summary(mtcars)

## Aufgabe 5.2

dim(mtcars)

## Aufgabe 5.3

variable.names(mtcars)
str(mtcars)

## Aufgabe 5.4

mtcars_6cyl <- mtcars[mtcars$cyl==6,]

## Aufgabe 5.5

mtcars[rownames(mtcars)=="Ferrari Dino",]

## Aufgabe 5.6

install.packages("dplyr")
library(dplyr)

select(mtcars, cyl, vs)
