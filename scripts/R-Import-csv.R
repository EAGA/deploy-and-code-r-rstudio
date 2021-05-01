# R - importar datos csv a R

#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readr
# install.packages("readr")

# cargar paquete readr
library(readr)

# buscar la ruta del archivo de csv
file.choose()

# Copiar ruta de la consola y guardar en variable
ruta_csv <- "C:\\Users\\Devops\\Downloads\\R\\Archivos\\casos-csv\\gapminder.csv"


#####################################
# 2. importar csv con código de R #
#####################################

# importar datos gapminder
gapminder <- read_csv(ruta_csv)

# mirar datos
head(gapminder)

# caso no titulo
ruta_sintitulo <- "C:\\Users\\Devops\\Downloads\\R\\Archivos\\casos-csv\\gapminder_col_names.csv"
gapminder_sintitulo <- read_csv(ruta_sintitulo,
                                col_names = FALSE)

# para agregar nombre
gapminder_contitulo <- read_csv(ruta_sintitulo,
                                col_names = c('pais', 'anio', 'vida', 'poblacion'))

# caso punto y coma
ruta_puntoycoma <- "C:\\Users\\Devops\\Downloads\\R\\Archivos\\casos-csv\\gapminder_puntoycoma.csv"
gapminder_puntoycoma <- read_csv2(ruta_puntoycoma)

########################################
# 3. importar csv con interfaz RStudio #
########################################

# ir a File > Import Dataset > From Text (readr)

# código que genera y ejecuta R automáticamente



# fin