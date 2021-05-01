# R - importar datos de excel a Rstudio

#####################################
# 1. Que necesitas antes de empezar #
#####################################

# instalar paquete readxl
install.packages('readxl')

# cargar paquete readxl
library(readxl)

# buscar la ruta del archivo de excel
file.choose()

# Copiar ruta de la consola y guardar en variable
ruta_excel <- "C:\\Users\\Devops\\Downloads\\R\\Archivos-xls\\gapminder_importar_a_r.xlsx"

# como mirar las hojas de tu excel
excel_sheets(ruta_excel)

#####################################
# 2. importar excel con código de R #
#####################################

# importar caso ideal
caso_ideal <- read_excel(ruta_excel)

# importar caso medio
caso_medio <- read_excel(ruta_excel,
                         sheet = "Hoja2")


# importar caso dificil
final_boss <- read_excel(ruta_excel,
                         sheet = "Hoja3",
                         range = "C7:F17")



##########################################
# 3. importar excel con interfaz RStudio #
##########################################

# ir a File > Import Dataset > From Excel...



# fin