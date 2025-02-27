# R - GGPLOT2

# SUPERPONER var�as GR�FICAS [ ggplot + R y RStudio ]
library(ggplot2)

data("iris")
head(iris)

# 1  puntos  y lineas 
ggplot(data = iris,
       mapping = aes(x = Sepal.Length,
                     y = Sepal.Width,
                     color = Species))+ 
       geom_point() +
       geom_smooth(method = 'lm')

# 2 varias lineas 
# una linea 
ggplot(data = iris[iris$Species == 'setosa',],
       mapping = aes(x = 1:50,
                     y = Petal.Width
                    ))+ 
  geom_line() 
# todas las lineas
ggplot(data = iris,
       mapping = aes(x = rep(1:50,3),
                     y = Petal.Width,
                     color = Species))+ 
  geom_line() 

# boxplot con puntos 
ggplot(data = iris,
       mapping = aes(x = Species,
                     y = Petal.Width,
                     fill = Species))+ 
  geom_boxplot() +
  geom_jitter()
