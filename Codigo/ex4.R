library(readxl)

dados <- read_excel("Dados/exercicio4.xls")

tabela = table(dados)

View(tabela)

valores = dados$Salários

png(filename = "Graficos/ex4.png", width = 500, height = 500)
hist(x = valores, col = "orange" ,main = "Salários do hospital", xlab = "Salário", ylab="Frequência")
dev.off()