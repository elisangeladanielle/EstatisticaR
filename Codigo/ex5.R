library(readxl)

dados <- read_excel("Dados/exercicio5.xls")

tabela = table(dados)
#printa
#View(tabela)

#png(filename = "Graficos/ex5.png", width = 500, height = 500)

barplot(dados$Marcas, main = "Marcas por pessoas",
        xlab = "Marcas", ylab = "N de Pessoas",
        names.arg = dados$Marcas, ylim = c(0,2), col = "red")


#barplot(quantile(dados$`N pessoas`), main="N° de Pessoas", col = "orange")
#dev.off()
