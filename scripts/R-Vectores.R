# R - vectores

#####################################
#  1: creando vectores en R 
#####################################

# crear vector carácter con nombre de las películas
peliculas <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")


# crear vector numérico con puntuación de las películas
puntuacion <- c(7.9, 7.2, 6.1, 6.3)

# crear vector lógico sobre si la película es posterior a 2015
estreno_2005 <- c(FALSE, FALSE, TRUE, TRUE)

####################################################
#  2: operaciones aritméticas con vectores 
####################################################

# sumar 2 a la puntuación
suma <- (2+puntuacion)

# dividir la puntuación entre 2
divicion <- (puntuacion/2)

# crea la puntuación de ed
puntuacion_ed <- c(10, 9, 6, 7)

# calcular diferencia entre puntuaciones
diferencia <- (puntuacion_ed - puntuacion)

# calcular la longitud del vector
length(puntuacion)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# : selección de elementos de un vector 
###################################################

## selección basada en posición
# seleccionar la tercera película
peliculas[3]

# seleccionar la primera y la última película
peliculas[c(1,4)]

## selección basada en condición lógica
# crear condición lógica
puntuacion_baja <- puntuacion < 7

# mostrar condición para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de películas con puntuaciones bajas
peliculas[puntuacion_baja]

