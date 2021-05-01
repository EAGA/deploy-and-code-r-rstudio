# R - factores

# crear vector de ventas
tallas <- c('m', 'g', 'S', 'S','m', 'M')

# intentar graficar
plot(tallas)

###################################
# 1: crear factores en R 
###################################

# crear factor de un vector
tallas_factor <- factor(tallas)

# graficar factor
plot(tallas_factor)

# mirar niveles de factor
levels(tallas_factor)

######################################
#  2: recodificando factores 
######################################

# creando factor recodificado
tallas_recodificado <- factor(tallas,
                              levels = c("g","m","M","S"),
                              labels = c("G","M","M","S"))



# graficando ventas_recodificado
plot(tallas_recodificado)

#############################################
#  3: ordenando niveles de factores 
#############################################

# ordenando niveles (copiar factor anterior)
tallas_ordenado <- factor(tallas,
                          ordered = TRUE,
                          levels = c("S","m","M","g"),
                          labels = c("S","M","M","G"))




# viendo el orden en los niveles
tallas_ordenado

# graficando el factor ordenado
plot(tallas_ordenado)

