library(readxl)

dados <- read_excel("Dados/exercicio9.xls")

tabela = table(dados)

#View(tabela)

valores = dados$Salários

png(filename = "Graficos/ex9.png", width = 500, height = 500)
hist(x = valores, col = "green" ,main = "Salário dos Funcionários", xlab = "Salários", ylab="Funcionários")
dev.off()

#xlim=range(2)