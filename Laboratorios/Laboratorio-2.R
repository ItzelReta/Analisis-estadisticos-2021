# Itzel Reta Heredia
# 8/18/2021
# 2124992
############

# Importar datos ----------------------------------------------------------
#comando setwd especifica la ruta en donde se encuentran las bases de datos almacenados
setwd("C:/estadistica/Analisis-estadisticos-2021") 

Trees <- read.csv("DBH_1.csv", header = TRUE)
head(Trees)
dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1,14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3,9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)

## Accesar datos de internet

### Ejemplo 2
prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)
head(profepa)
### Ejemplo 2
prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/","file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2)
head(profepa2)

## Datos de URL seguras (https): Dropbox y Github


library(repmis)
conjuntos <- source_data("https://www.dropbox.com/s/9iwqx34fzdh2rhw/cuadro1.csv?dl=1")
head(conjuntos)

library(repmis)


library(readr)

file <- paste0("https://raw.githubusercontent.com/mgtagle/","202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)


# Operaciones con la base de datos ----------------------------------------


mean(Trees$dbh)
sd(Trees$dbh)
sum(Trees$dbh < 10)
which(Trees$dbh < 10)

Trees.13 <- Trees[!(Trees$parcela=="2"),]
Trees.13

Trees.1 <- subset(Trees, dbh <= 10)
head(Trees.1)

mean(Trees$dbh)
mean(Trees.1$dbh)

hist(Trees$dbh)
hist(Trees.1$dbh)
hist(Trees$dbh, main = "Muestra original trees",  ylab = "Frecuencia", xlab = "DBH",  col = "#cccc00")

hist(Trees.1$dbh, main = "dbh < 10 cm. trees.1",  ylab = "Frecuencia", xlab = "DBH",  col = "#cccc00")


# Representacion grafica --------------------------------------------------

## Histogramas
mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
head(mamiferos)
hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep, xlim = c(0,20), ylim = c(0,14), main = "Total de horas sueño de las 39 especies", xlab = "Horas sueño", ylab = "Frecuencia", las = 1, col = "#996600")

## Barplot o grafico de barras
data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])
feeds <- table(chickwts$feed)
feeds

## Grafica
barplot(feeds)
barplot(feeds[order(feeds, decreasing = TRUE)], xlab = "Numero de pollos", main = "Frecuencias por tipos de alimentación", las=1, horiz = TRUE,col = "#ffcc00")

