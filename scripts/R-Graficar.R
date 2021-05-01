# R - graficar en R


# datos de la primera parte
year <- c('2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018')
disney <- c(11, 13, 11, 8, 12, 11, 12, 8, 10)

# graficando con codigo
plot(x = year, y = disney )


# editando la grafica
plot(x = year, 
     y = disney,
     main = 'disney',
     xlab = '',
     ylab = '',
     col = 'cornflowerblue',
     pch = 16,
     panel.first = grid()
    )


# Graficas con ggplot2
# install.package(ggplot2) # para instalar ggplot2
library(ggplot2)

# hacer dataframe
peliculas <- data.frame(year, 
                        disney)

# graficar utilizando ggplot
ggplot(data = peliculas,
       mapping = aes(x = year, y = disney)) + 
geom_point() +
labs(title = 'disney')  


# fin