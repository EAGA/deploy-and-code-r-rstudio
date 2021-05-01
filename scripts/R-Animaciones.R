# R Animaciones gganimate
#install.packages('gganimate')
#install.packages('gifski')
library(tidyverse)
library(gganimate)
library(gifski)
library(gapminder)

data(gapminder)
head(gapminder)

# 1. grafica basica 
gapminder %>%
  group_by(year, continent)%>%
  summarise(mean_life = mean(lifeExp)) %>%
  ggplot(aes(x = year,
             y = mean_life,
             color = continent)) + 
   geom_line()

# 2. grafica animada
gapminder %>%
  group_by(year, continent)%>%
  summarise(mean_life = mean(lifeExp)) %>%
  ggplot(aes(x = year,
             y = mean_life,
             color = continent)) + 
  geom_line() +
  transition_reveal(year)

# 3. mejorando grafica animada
gapminder %>%
  group_by(year, continent)%>%
  summarise(mean_life = mean(lifeExp)) %>%
  ggplot(aes(x = year,
             y = mean_life,
             color = continent)) + 
  geom_line(size = 2) +
  geom_point(size = 4) +
  labs(title = 'Esperanza de Vida en {frame_along}',
       x = 'Fecha',
       y = 'Años de Vida')+
  theme_dark()+
  transition_reveal(year)