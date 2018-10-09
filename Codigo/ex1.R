# Clean up the area
rm(list = ls())
#

#Localizando o arquivo .xls
##setwd("C:\Users\elisa\Documents\Unesp\Semestre 6\Ciência de dados\Estatistica em R\EstatisticaR\Dados")

##install.packages("readxl")
library(readxl)

dados <- read_excel("Dados/exercicio1.xls")

tabela = table(dados)
#printa
#View(tabela)

#define media
media = mean(dados$`Taxas de juros`)
#media <- mean(taxas)

#define mediana
mediana = median(dados$`Taxas de juros`)

#define variancia
variancia = var(dados$`Taxas de juros`)

#define desvio padrao
desviopadrao = sd(dados$`Taxas de juros`)

#valor minimo
valor_min = min(dados$`Taxas de juros`)

#valor maximo
valor_max = max(dados$`Taxas de juros`)

#quartil 1
#q1 <- quantile(dados$`Taxas de juros`)

#quartil 3
#q3 <- quantile(dados$`Taxas de juros`)

resultados <- summary(dados$`Taxas de juros`)

quartil1 <- resultados[[2]]

quartil3 <- resultados[[5]]

png(filename = "Graficos/ex1.png", width = 500, height = 500)
boxplot(quantile(dados$`Taxas de juros`), main="Media", col = "purple")
dev.off()