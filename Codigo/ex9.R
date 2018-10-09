packrat::status()
packrat::restore()

library(readxl)

dados <- read_excel("Dados/exercicio9.xls")

tabela = table(dados)

#View(tabela)

valores = dados$Salários
range(valores)
breaks <- seq(3, 25, by=2)

valores.cut <- cut(valores, breaks, right=FALSE)

frequencias = table(valores.cut)

View(frequencias)

png(filename = "Graficos/ex9.png", width = 500, height = 500)
hist(x = valores, col = "green" ,main = "Salário dos Funcionários", xlab = "Salários", ylab="Funcionários")
dev.off()