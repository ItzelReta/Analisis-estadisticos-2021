# Itzel Reta Heredia
# 8/23/2021
# 2124992
############


cedro <- read.csv("cedro-rojo.csv", header = TRUE)
head(cedro)

boxplot(cedro$diametro)
boxplot(cedro$altura)

shapiro.test(cedro$diametro) #variable no normal
shapiro.test(cedro$altura) #Variable normal

#transformar  la viariable diametro para normalizar
cedro$dia.log <- log(cedro$diametro + 1)
shapiro.test(cedro$dia.log)
hist(cedro$dia.log)

#transformar por raiz cuadrada

cedro$dia_al2 <- sqrt(cedro$diametro + 0.5)
shapiro.test(cedro$dia_al2)
hist(cedro$dia_al2)

# crear un subset (subconjuntp) con diametros menores a 16

cor.test(cedro$diametro, cedro$altura)

cr.16 <- subset(cedro, cedro$diametro <16)

boxplot(cr.16$diametro)

shapiro.test(cr.16$diametro)

cor.test(cr.16$diametro, cr.16$altura)

plot(cr.16$diametro, cr.16$altura)

# Revisar datos de CANOPY

canopy <- read.csv("canopy.csv", header = TRUE)

# realizar un subset con los datos de CBE

cbe <- subset(canopy, canopy$Forest == "CBE")

plot(cbe$Cnpy, cbe$LAI4)

cor.test(cbe$Cnpy, cbe$LAI4)


plot(cbe$Cnpy, cbe$GLI, col = "red", xlab = "apertura del dosel",
     ylab = "GLI")

cor.test(cbe$Cnpy, cbe$GLI)




