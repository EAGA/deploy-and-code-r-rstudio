# R - vectores

#####################################
#  1: creando vectores en R 
#####################################

# crear vector car�cter con nombre de las pel�culas
peliculas <- c("Shrek", "Shrek 2", "Shrek Tercero", "Shrek: Felices por siempre")


# crear vector num�rico con puntuaci�n de las pel�culas
puntuacion <- c(7.9, 7.2, 6.1, 6.3)

# crear vector l�gico sobre si la pel�cula es posterior a 2015
estreno_2005 <- c(FALSE, FALSE, TRUE, TRUE)

####################################################
#  2: operaciones aritm�ticas con vectores 
####################################################

# sumar 2 a la puntuaci�n
suma <- (2+puntuacion)

# dividir la puntuaci�n entre 2
divicion <- (puntuacion/2)

# crea la puntuaci�n de ed
puntuacion_ed <- c(10, 9, 6, 7)

# calcular diferencia entre puntuaciones
diferencia <- (puntuacion_ed - puntuacion)

# calcular la longitud del vector
length(puntuacion)

# calcular el promedio del vector puntuacion
mean(puntuacion)

###################################################
# : selecci�n de elementos de un vector 
###################################################

## selecci�n basada en posici�n
# seleccionar la tercera pel�cula
peliculas[3]

# seleccionar la primera y la �ltima pel�cula
peliculas[c(1,4)]

## selecci�n basada en condici�n l�gica
# crear condici�n l�gica
puntuacion_baja <- puntuacion < 7

# mostrar condici�n para ver TRUE/FALSE
puntuacion_baja

# mostrar puntuaciones bajas
puntuacion[puntuacion_baja]

# mostrar nombres de pel�culas con puntuaciones bajas
peliculas[puntuacion_baja]

