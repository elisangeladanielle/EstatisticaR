library(readxl)

dados <- read_excel("Dados/exercicio2.xls")

table_freq = table(dados$Casas)
View(table_freq)

valores = dados$Casas

#medidas de posicao
#media
media = mean(valores)

#moda
calcmoda <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
moda = calcmoda(valores)

#mediana
mediana = median(valores)

#medidas de dispersao
#define variancia
variancia = var(valores)

#define desvio padrao
desviopadrao = sd(valores)

png(filename = "Graficos/ex2.png", width = 500, height = 500)
hist(x = valores, col = "pink", main = "Casas por Quarteirão")
dev.off()