# R - Arbol de decisiones
# modelo  clasificacion arbol para  toma  de  decisiones R

# install.packages('titanic')
# cargar librerias
library(tidyverse)
library(titanic)

# cargar data
data("titanic_train")
# mostrar encabezados 
head(titanic_train)

# instalacion  de  paquetes  especiales 
# install.packages('rpart')
# install.packages('rattle')
# install.packages('rpart.plot')

# cargar librerias especiales 
library(rpart)
library(rattle)
library(rpart.plot)


# variable  para  asignacion  de funcion de arbol 
arbor <- rpart(
            formula = Survived ~ Sex + Age,
            data = titanic_train,
            method = 'class'
            
)

# mostrar grafica 
fancyRpartPlot(arbor)

# asignacion  de  un  dataframe
pred_arbor <- predict(arbor, type = 'class')


# variable  para  asignacion  de comparacion
titanic_pred <- cbind(titanic_train, pred_arbor)

# prediccion para  male 4 age 
predict(object = arbor,
        newdata = data.frame(Age = 4,
                             Sex ='male'),
        type = 'class')
