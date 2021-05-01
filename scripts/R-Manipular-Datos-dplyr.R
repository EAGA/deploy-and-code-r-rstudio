# R - manipulación de datos



################################
# 1. cargar datos de gapminder #
################################

# instalando paquete con los datos
install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data(gapminder)

# cargando datos a entorno
head(gapminder)

##############################
# 2. filtrar datos con dplyr #
##############################

# install.packages("tidyverse")
library(tidyverse)

# filtrar datos por pais sin %>% 
filter(gapminder, country == 'Panama')

# filtrar datos por pais
# para hacer %>% en RStudio (cntrl + shift + M)
gapminder %>%
  filter(country == 'Panama')

# filtrar datos por año
gapminder %>%
  filter(year == '2007', continent == 'Americas')

# filtrar paises con esperanza de vida 
# menor o igual a 40 y el año en 2002
gapminder %>%
  filter(lifeExp <= '40', year == '2002')


###############################
# 3. hacer resumenes de datos #
###############################

# cantidad de paises en Asia
gapminder %>%
  filter(continent == 'Asia', year == '2007') %>%
  summarise(conteo = n())

# maxima esparanza de vida
gapminder %>%
  summarise(max_lifeExp = max(lifeExp))

# agrupando esperanza de vida promedio por año
gapminder %>%
  group_by(year)%>%
  summarise(prom_vida = mean(lifeExp))

