# Itzel Reta Heredia
# 8/28/2021
# 2124992
############


# Problema 1 --------------------------------------------------------------
set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)
hist(x2, breaks = c(0, 2, 4, 6, 8, 10), col = "#cc9900")

x3 <- round(runif(n = size, min = 0, max = 10), 2)

hist(x3, breaks = c(0, 1, 2, 4, 7, 10), col = "#cc9900")

# Problema 2 --------------------------------------------------------------

# a) D
# b) A
# c) C
# d) B
# e) C

# Problema 3 --------------------------------------------------------------

data(quakes)
mags <-  hist(quakes$mag, xaxt = "n",
                          col = "#e6ac00", xlab="Magnitud de los terremotos",
                          ylab= "Frecuencias",
                          main = "",las = 1,
                          ylim = c(0,260))
axis(1, mags$mids)

# a) sesgo positivo
# b) 4.5
# c) 2.4
# d) 7.2
# e) 
# f) 
# Problema 4 --------------------------------------------------------------

# B) 50%

# Problema 5 --------------------------------------------------------------

# a) Especie C
# b) Especie F
# c) Especie F
# d) Especie C
# e) Especie H
# f) Especie F
# g) Especie C
# h) Especie F
# i) Especie H
# j) Especie F

# Problema 6 --------------------------------------------------------------

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
fires

# 1
max(fires)
# 2
min(fires)
# 3
range(fires)
# 4
quantile(fires, 0.25)
# 5
quantile(fires, 0.50)
# 6
quantile(fires, 0.75)
# 7
mean(fires)
# 8
var(fires)
# 9
sd(fires)
# 10
boxplot(fires, horizontal = TRUE,
        xlab = "Incendios de 01 de enero al 04 de marzo del 2021",
        col = "#ffa31a", main = "Incendios forestales en Mexico",
        border = "#4d4d33")
