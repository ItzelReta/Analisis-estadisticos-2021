# Itzel Reta Heredia
# 9/18/2021
# 2124992
############


# analisis de varianza de una sola via, cuanso solo tenemos un trat que estamos comparando
# 1 tratamiento y 3 muestras como minimo
# 


sitio <-c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
arena <- c(6, 10, 8, 6, 14, 17, 9, 11, 7, 11)
arcilla <- c(17, 15, 3, 11, 14, 12, 12, 8, 10, 13)
limo <- c(13, 16, 9, 12, 15, 16, 17, 13, 18, 14)
y.prod <- c(arena, arcilla, limo)
y.prod

suelo <- gl(3, 10, 30, labels = c("arena", "arcilla", "limo"))
produc <- data.frame(suelo, y.prod)
produc

#media
#tapply funcion
tapply(produc$y.prod, produc$suelo, length)
tapply(produc$y.prod, produc$suelo, mean)
tapply(produc$y.prod, produc$suelo, var)

# revisar si existen doferencias entre las varianzas de los tres tratamientos.
# bartlett.test
bartlett.test(produc$y.prod, produc$suelo)
fligner.test(produc$y.prod, produc$suelo) #tambien es para revisar la varianza

boxplot(produc$y.prod ~ produc$suelo)

# Anova en R

prod.aov <- aov(produc$y.prod ~ produc$suelo)
summary(prod.aov)

# Suma de cuadrados del tratamiento SSTotal

SST <- sum((produc$y.prod - mean(produc$y.prod))^2)
SST

arena-mean(arena)
arcilla-mean(arcilla)
limo-mean(limo)

arena.sum <- sum((arena-mean(arena))^2)
arcilla.sum <- sum((arcilla-mean(arcilla))^2)
limo.sum <- sum((limo-mean(limo))^2)

SSE <- sum(arena.sum + arcilla.sum + limo.sum)
SSE # suma de cuadrados del error

# SSTratameinto = diferencia de SST-SSE 
SST-SSE


Ftab <-qf(0.95, 2,27)
Ftab

probF <- 1-pf(4.24, 2,27)
probF

#Cuando el valor estimaso f es mayor que el tabulado hay diferencias significativas
#y cuando el valor de f del experimento entonces no hay diferencias significativas
#en este caso si es mayor entonces no hay diferencias

# Diferencias significatuvas entre los tratamientos
# Tukey Test

TukeyHSD(prod.aov, conf.level = 0.95)

# si no hay diferencias significativas no se tiene por k correr la prueba de Tukey

