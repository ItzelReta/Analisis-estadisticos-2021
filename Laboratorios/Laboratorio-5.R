# Itzel Reta Heredia
# 8/31/2021
# 2124992
############
#Laboratorio 5

# Actividades -------------------------------------------------------------



op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)
op
cor.test(anscombe$x2, anscombe$y2)

plot(anscombe$x1, anscombe$y1)






