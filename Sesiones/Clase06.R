# Itzel Reta Heredia
# 9/6/2021
# 2124992
############

# PRUEBAS DE T
# SIRVEN PARA COMPARAR DOS MEDIAS DE DOS TRTAMIENTOS DISTINTOS
#  se dividen en 3, 
# > la primera de una muestra observada vs media teoretica
# > muestras independientes, hay 2 exprmtos
# > muestras dependentes, por lo gral se dividen en 2 tiempos
# para usar la PT hay que normalizar los datos y revisar la homogeneidad de los datos
# esa es una prueba parametrica 
# prueba de shapiro para saber si son NORMALES los datos 
# ## VARIANZA amplitud que existe en la curva
# planteamiento de hipotesis: nule H0 no existen diferencias sobre las medias o alternativa H1 existen diferencias sobre las medias
# funcion en R:
# t.test()
# t.test(data$h,mu=25)
# >,< sirve para especificar si mi media observ es mayor o menor que la media teor
# t.test(data$p1, data$p2,var.equal=TRUE)
# primero hay que ver cual es la mejor opcion grafica, podria ser boxplot

setwd("C:/estadistica/Analisis-estadisticos-2021") 

canopy <- read.csv("Analisis-estadisticos-2021/canopy.csv", header = 1)
cbe <- subset(canopy, canopy$Forest == "CBE")
head(cbe)
mean(cbe$Cnpy)

# Media teoretica del 27%
# Media observada de 29.1%

# la media teor es = a la media obs en la apertura del sosel

t.test(cbe$Cnpy, mu=28)

fivenum(cbe$Cnpy)

boxplot(cbe$Cnpy)
t.test(cbe$Cnpy, mu=28.4)

# si la media teor es diferente a le media observ, se acepta la hipotesis alternativa

mean(cbe$GLI)

# Media teor 30%
# media obs 28.6
t.test(cbe$GLI, mu=30)

# la media teor es dife a la medi obs
# valores mas grandes de 0.05 hip altern

# si la media obs es meno (estasdisticamente) comparada con la media teoretica
t.test(cbe$GLI, mu= 30, alternative = "less")

#media teor 27%
t.test(cbe$GLI, mu=27, alternative = "greater")



  
