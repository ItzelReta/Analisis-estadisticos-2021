# Itzel Reta Heredia
# 8/31/2021
# 2124992
############
#Tarea 6
setwd("C:/estadistica/Analisis-estadisticos-2021")

erp <- read.csv("erupciones.csv", header = TRUE)

mean(erp$eruptions)
mean(erp$waiting)
sd(erp$eruptions)
sd(erp$waiting)
var(erp$eruptions)
var(erp$waiting)
cor.test(erp$eruptions, erp$waiting)
# r= 0.9008112
# R: H1 si es alternativa si es sifnificativa

# H1: “Existe una correlacion positiva entre la duracion de las erupciones y el tiempo de espera”
# H0: No existe una correlación entre e la duración de las erupciones y el tiempo de espera


erp$xmn <- (erp$waiting - mean(erp$waiting))

erp$ymn <- (erp$eruptions - mean(erp$eruptions))

erp$xmn2 <- (erp$waiting - mean(erp$waiting))^2

beta <- sum(erp$xmn * erp$ymn)/sum(erp$xmn2)
beta
alfa <- (mean(erp$eruptions))-(beta*mean(erp$waiting))
alfa

erp$yep <- alfa + (beta*erp$waiting)

erp.lm <- lm(erp$eruptions ~ erp$waiting)
erp.lm$fitted.values



