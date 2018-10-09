library(readxl)

dados <- read_excel("Dados/exercicio9.xls")

tabela = table(dados)

#View(tabela)

valores = dados$Sal�rios

png(filename = "Graficos/ex9.png", width = 500, height = 500)
hist(x = valores, col = "green" ,main = "Sal�rio dos Funcion�rios", xlab = "Sal�rios", ylab="Funcion�rios")
dev.off()

#xlim=range(2)