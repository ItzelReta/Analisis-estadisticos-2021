# Itzel Reta Heredia
# 8/26/2021
# 2124992
############


# Importacion de datos ----------------------------------------------------

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/","PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)
head(inventario)

# Autoestudio

freq_especie <- table(inventario$Especie)
freq_especie
prop_especie <- freq_especie / sum(freq_especie)
prop_especie
perc_especie = 100 * prop_especie
perc_especie
barplot(freq_especie, las = 1, border = NA, cex.names = 0.7)
pie(freq_especie, col = topo.colors(4),
    labels = paste(levels(inventario$Especie), round(perc_especie, 2), " %"))

# Histograma
diam_hist <- hist(inventario$Diametros, las = 1, col ='#ffe0b3')
diam_hist
diam_hist$breaks

h1 <-  hist(inventario$Diametros, xaxt = "n",
            breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
            col = "#00cc99", xlab="Diámetros (cm)",
            ylab= "Frecuencias",main = "",las = 1,
            ylim = c(0,14))
axis(1, h1$mids)

# Autoestudio
altura_hist <- hist(inventario$Altura, las = 1, col ='#ffe0b3')
altura_hist
altura_hist$breaks
H2 <- hist(inventario$Altura, xaxt = "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col = "#00cc99", xlab="Alturas (cm)",
           ylab= "Frecuencias",main = "",las = 1,
           ylim = c(0,14))
axis(1, H2$mids)
