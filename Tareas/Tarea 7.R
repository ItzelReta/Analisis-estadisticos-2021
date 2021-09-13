# Itzel Reta Heredia
# 9/9/2021
# 2124992
############

# Tarea 7

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94, 80.7,
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.7)
n <- length(costal)
n # Num de observaciones
costa.media <- mean(costal)
costa.media # Media
costa.sd <- sd(costal)
costa.sd # Desviacion estandar
costa.se <- costa.sd/sqrt(n)
costa.se
costa.T <- (costa.media - 80)/ costa.se
costa.T
pt(costa.T, df = n-1) 
pt

t.test(costal, mu=80)
shapiro.test(costal)#dist normal
# df = 43 grados de libertad
# Valor de p= 0.01132

# Ejercicio 1 -------------------------------------------------------------

# df = 43 grados de libertad
# Valor de p= 0.01132
# Se acepta la hipotecis H0
# los valores son significativamemnte iguales

# Ejercicio 2 -------------------------------------------------------------
azufre <- c(15.8, 22.7, 26.8, 19.1, 18.5, 14.4, 8.3, 25.9, 26.4, 9.8,
            22.7, 15.2, 23.0, 29.6, 21.9, 10.5, 17.3, 6.2, 18.0, 22.9,
            24.6, 19.4, 12.3, 15.9, 11.2, 14.7, 20.5, 26.6, 20.1, 17.0,
            22.3, 27.5, 23.9, 17.5, 11.0, 20.4, 16.2, 20.8, 13.3, 18.1)
n <- length(azufre)
n
azufre.media <- mean(azufre)
azufre.media
azufre.sd <- sd(azufre)
azufre.sd
azufre.se <- azufre.sd/sqrt(n)
azufre.se
azufre.T <- (azufre.media - 17.5)/azufre.se
azufre.T
pt(azufre.T, df = n-1)   #valor de p

t.test(azufre, mu = 17.5)
shapiro.test(azufre)

# 0.1893
# intervalos 16.87912 20.53588
# grados de libertad 39
# se acepta la hipotesis nula

# Ejercicio 3 -------------------------------------------------------------

file <- paste0("https://raw.githubusercontent.com/mgtagle/MCF-202_Agosto_2021/main/TEMPAIRE_DIA.csv")
temperatura <- read.csv(file)
head(temperatura)


n <- length(temperatura$temp_media)
n
temp.media <- mean(temperatura$temp_media)
temp.media
temp.sd <- sd(temperatura$temp_media)
temp.sd
temp.se <- temp.sd/sqrt(n)
temp.se
temp.T <- (temp.media - 24)/temp.se
temp.T
pt(temp.T, df = n-1)

t.test(temperatura$temp_media)

#
# intervalo de confianza 845
# grados de libertad 23.28216 23.97599
# Se acepta la hipotesis nula
# el valor promedio no es mayor