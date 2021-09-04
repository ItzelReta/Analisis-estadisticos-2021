# Itzel Reta Heredia
# 8/31/2021
# 2124992
############
#Tarea 5


# Ejercicio 1 -------------------------------------------------------------

speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)
efim <- data.frame(speed, abundance)
plot(speed, abundance)

efim$xmn <- (efim$speed - mean(efim$speed))

efim$ymn <- (efim$abundance - mean(efim$abundance))

efim$xmn2 <- (efim$speed - mean(efim$speed))^2

beta <- sum(efim$xmn * efim$ymn)/sum(efim$xmn2)
alfa <- (mean(efim$abundance))-(beta*mean(efim$speed))

efim$yef <- alfa + (beta*efim$speed)

efim.lm <- lm(efim$abundance ~ efim$speed)
summary(efim.lm)
efim.lm$df

#¿Es estadisticamente significativa la correlacion?
# R: H1 si es alternativa si es sifnificativa


# Ejercicio 2 -------------------------------------------------------------


ph <- c(5.40, 5.65, 5.14, 5.14, 5.14, 5.10, 4.70)
N <- c(0.188, 0.165, 0.260, 0.169, 0.164, 0.094, 0.100)

Dens <- c(0.92, 1.04, 0.95, 1.10, 1.12, 1.22, 1.52)
cor.test(N, ph)

P <- c(215, 208, 300, 248, 174, 129, 117)
cor.test(ph,P)
Ca <- c(16.35, 12.25, 13.02, 11.92, 14.17, 8.55, 8.74)
cor.test(ph, Ca)
Mg <- c(16.35, 12.25, 13.02, 11.92, 14.17, 8.55, 8.74)
cor.test(ph, Mg)
K <- c(0.70, 0.71, 0.68, 1.09, 0.70, 0.81, 0.39)
cor.test(ph, K)
Na <- c(1.14, 0.94, 0.6, 1.01, 2.17, 2.67, 3.32)
cor.test(ph, Na)
conduc <- c(1.09, 1.35, 1.41, 1.64, 1.85, 3.18, 4.16)
cor.test(ph, conduc)


summary(ph, N)
suel <- read.csv("suelo.csv", header = TRUE)
head(suel)

mod=lm(ph ~ N, data = suel)
summary(suel)
sqrt(0.1506)c

