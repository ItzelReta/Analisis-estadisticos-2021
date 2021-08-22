# Itzel Reta Heredia
# 8/18/2021
# 2124992
############

# Importar datos de trabajo

setwd("C:/estadistica/Analisis-estadisticos-2021") 

conjunto <- read.csv("cuadro1.csv", header = TRUE)
head(conjunto)
mean(conjunto$Altura)

# Seleccion de datos
subset(conjunto, Altura= "<= 13.94")

which(conjunto$Altura <= 13.94)
sum(conjunto$Altura <= 13.94)

subset(conjunto, Altura <= 13.94, select = c(Altura))
H.media <- subset(conjunto, Altura <= 13.94, select = c(Altura))

subset(conjunto, Altura <= 16.5, select = c(Altura))
H.16 <- subset(conjunto, Altura <= 16.5, select = c(Altura))

subset(conjunto, Vecinos <= 3, select = c(Vecinos))
Vecinos_3 <- subset(conjunto, Vecinos <= 3, select = c(Vecinos))


subset(conjunto, Vecinos > 3, select = c(Vecinos))
Vecinos_4 <- subset(conjunto, Vecinos > 3, select = c(Vecinos))

# Seleccion de datos
mean(conjunto$Diametro)
subset(conjunto, Diametro < 15.79, select = c(Diametro))
DBH_media <- subset(conjunto, Diametro < 15.79, select = c(Diametro))

subset(conjunto, Diametro > 16, select = c(Diametro))
DBH_16 <- subset(conjunto, Diametro > 16, select = c(Diametro))

subset(conjunto, Especie=="C",  select =c(Especie))
subset(conjunto, Especie=="F",  select =c(Especie))
subset(conjunto, Especie=="H",  select =c(Especie))

sum(conjunto$Diametro <= 16.9)
sum(conjunto$Altura > 18.5)

# Visualizacion de datos

hist(H.16$Altura, main = "Altura menor a la media",  ylab = "Frecuencia", xlab = "Altura",  col = "#669999")
hist(H.media$Altura, main = "Altura igual o menor a la media",  ylab = "Frecuencia", xlab = "Altura",  col = "#669999")

hist(Vecinos_3$Vecinos, main = "Arboles con vecinos iguales o menores a 3",  ylab = "Frecuencia", xlab = "Vecinos",  col = "#669999")
hist(Vecinos_4$Vecinos, main = "Arboles con vecinos mayores a 4",  ylab = "Frecuencia", xlab = "Vecinos",  col = "#669999")

hist(DBH_16$Diametro, main = "Diametros mayores a 16",  ylab = "Frecuencia", xlab = "Diametro",  col = "#669999")
hist(DBH_media$Diametro, main = "Diametros menores a la media",  ylab = "Frecuencia", xlab = "Diametro",  col = "#669999")

# Estadisticas basicas

mean(H.16$Altura)
mean(H.media$Altura)
mean(Vecinos_3$Vecinos)
mean(Vecinos_4$Vecinos)
mean(DBH_16$Diametro)
mean(DBH_media$Diametro)

sd(H.16$Altura)
sd(H.media$Altura)
sd(Vecinos_3$Vecinos)
sd(Vecinos_4$Vecinos)
sd(DBH_16$Diametro)
sd(DBH_media$Diametro)


# Lineas de comando R -----------------------------------------------------

library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)
