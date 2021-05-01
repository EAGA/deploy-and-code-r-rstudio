# R-modelos 

# despliego libreria 
library(tidyverse)

# asigno variable con data
data("Orange")

# despliego data
head(Orange)

# operaciones 
Orange %>%
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() +
  geom_abline(intercept = 10,
              slope = 0.1,
              col = 'blue' )

lm(circumference ~ age, data = Orange)

Orange %>%
  ggplot(aes(x = age,
             y = circumference)) +
  geom_point() +
  geom_abline(intercept = 17.3997,
              slope = 0.1068,
              col = 'blue' ) +
  geom_vline(xintercept = 800,
             col = 'red')

dias <- 800
medida <- 0.1068 * dias + 17.3997
print(medida)
