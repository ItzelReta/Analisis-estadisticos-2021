# Itzel Reta Heredia
# 9/6/2021
# 2124992
############

# hipotesis nula H0 siempre dice que 
# H0.(nula)= no existen diferencias entre la apertura del dosel cbe vs csr debido a las cprtas e extraccion de lena
# H1.(alternativa) dice que existe una diferencia entre la apertura del dosel cbe vs csr debido a las cortas de extraccion para lena 
# H1 menor = la aertura del dosel en el cbe es menor que la apertura del csr debido a las conrtas de extraccion de lena

setwd("C:/estadistica/Analisis-estadisticos-2021") 
dosel <- read.csv("canopy.csv", header = T)
boxplot(dosel$Cnpy ~ dosel$Forest)

# prueba de normalidad
shapiro.test(dosel$Cnpy) #los dato son normales

# homogeneidad de varianzas

CBE <- subset(dosel,dosel$Forest =="CBE")
CSR <- subset(dosel,dosel$Forest =="CSR")
var(CBE$Cnpy); var(CSR$Cnpy)
var.test(dosel$Cnpy ~ dosel$Forest)
var.test(CBE$Cnpy, CSR$Cnpy)
t.test(dosel$Cnpy ~ dosel$Forest, var.equal=TRUE)

## hay diferencias significativas ente la media 



#gli  h nula y alternativa 

boxplot(dosel$GLI ~ dosel$Forest)
shapiro.test(dosel$GLI)

var.test(dosel$GLI ~ dosel$Forest)

t.test(dosel$GLI ~ dosel$Forest, var.equal=TRUE)





prod <- read.csv("mainproduccion.csv", header = TRUE)
head(prod)
summary(prod)

prod$Tiempo <- as.factor(prod$Tiempo)

boxplot(prod$Kgsem ~ prod$Tiempo)

shapiro.test(prod$Kgsem)

t2012 <- subset(prod, prod$Tiempo =="T2012")
t2013 <- subset(prod, prod$Tiempo =="T2013")

var.test(prod$Kgsem ~ prod$Tiempo)

t.test(prod$Kgsem ~ prod$Tiempo, paired= TRUE) #paired para muestras independientes

