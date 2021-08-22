# Itzel Reta Heredia
# 8/16/2021
# 2124992
############

# Impoprtar datos CSV -----------------------------------------------------
# read.csv  funcion para importar datos

#comando setwd especifica la ruta en donde se encuentran las bases de datos almacenados
setwd("C:/estadistica/Analisis-estadisticos-2021") 

diametros <- read.csv("DBH_1.csv", header = TRUE, encoding = "UTF-8")
##diam <- read.csv("DBH_1.csv", header = TRUE, encoding = "UTF-8")

#comando head() para verificar
head(diametros)
tail(diametros)

# medidas de tendencia central --------------------------------------------


##mean(dbh)
mean(diametros$dbh)
median(diametros$dbh)
fivenum(diametros$dbh)

#{
#Función que encuentra la moda de un vector x
# m1 <- sort(table(x),decreasing=T)
# moda <- names(m1[m1==m1[1]])
# moda <- as.numeric(moda)
#  return(moda)
#}

# medidas de dispersion ---------------------------------------------------

sd(diametros$dbh)
var(diametros$dbh)
#coeficiente de variacion
sd(diametros$dbh)/mean(diametros$dbh) *100

# cuantiles ---------------------------------------------------------------

quantile(diametros$dbh, 0.5)
quantile(diametros$dbh, 0.15)
quantile(diametros$dbh, 0.25)

# graficas ----------------------------------------------------------------

#funcion histohramas (hist)

hist(diametros$dbh) 
hist(diametros$dbh, main = "Histograma diametros BE", 
     ylab = "Frecuencia", xlab = "Diametro",
     col = "#ff3399", ylim = c(0,10),
     las = 1)

# boxplot -----------------------------------------------------------------

boxplot(diametros$dbh)
boxplot(diametros$dbh, ylab = "Diametro (cm)", main = "Diametros experimento 1",
        col = "#66ffcc")
boxplot(diametros$dbh ~ diametros$parcela)
boxplot(diametros$dbh ~ diametros$parcela, xlab = "Parcelas", ylab = "Diametro (cm)")

# stem --------------------------------------------------------------------

stem(diametros$dbh)
stem(diametros$dbh, scale = 2)





# la funcion names.arg sirve para renombrar cada una de las columnas
# names.arg = c("Horsebean", "Meatmeal", "Sunflower", "Linseed", "Casein", "Soybean") 

