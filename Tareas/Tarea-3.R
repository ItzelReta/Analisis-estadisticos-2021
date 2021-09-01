# Itzel Reta Heredia
# 8/26/2021
# 2124992
############


# Problema 1 --------------------------------------------------------------

xi <- c(6,4,1,3)
sum(xi)

yi <- c(1,3,4,2)

sum(xi*yi)

prod(xi)
prod(xi*yi)

prod(xi^2*yi^0.5)

# Problema 2 --------------------------------------------------------------
GrupoA <- c(80, 90, 90, 100)
mean(GrupoA)
median(GrupoA)

GrupoB <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
mean(GrupoB)
median(GrupoB)

# A) Grupo A
# B) Grupo A, si.

# Problema 3 --------------------------------------------------------------

# Una cuarta calificacion de 76

# Problema 4 --------------------------------------------------------------

# El enunciado B) y el C) son verdaderos 

# Problema 5 --------------------------------------------------------------

Germinaciones <- c(5,6,7,8,9)
CajasP <- c(1,3,5,3,1)
mean(CajasP)
median(CajasP)
barplot(CajasP)
# A) Barplot
# B) 2.6 se suman los valores y se divide entre en total de valores
# C) 3, se colocan en forma ascendente y se tima el numero medio

# Problema 6 --------------------------------------------------------------

# a)
set <- c(2, 2, 3, 6, 10)
mean(set)
median(set)
# b)
set5 <- set+5
mean(set5)
median(set5)
summary(set5)
# c) si se ven afectadas, aumento el valor
# d)
setx5 <- set*5
mean(setx5)
median(setx5)
summary(setx5)
# e) si se ven afectadas, va aumentando el valor

# Problema 7 --------------------------------------------------------------

# 0, 1, 2, 3, 4, 5, 6, 7, 8, 9


# A) 6, 6, 7, 7, 9
#   4, 4, 6, 7, 8, 9, 11 

# B) 2, 5, 7, 7, 9
#   3, 4, 7, 8, 8

# Crear la función getmode.
getmoda <-function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

getmoda <-function(v)
uniqv <- unique(v)
uniqv[which.max(tabulate(match(v, uniqv)))]

