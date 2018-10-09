library(readxl)

dados <- read_excel("Dados/exercicio7.xls")

tabela = table(dados)

png(filename = "Graficos/ex7.png", width = 500, height = 500)
barplot(dados$Atendimento, main="Atendimento Hospital por áreas", xlab = "Áreas", 
        ylab = "Qtde Atendimento", names.arg = dados$Áreas,ylim=c(0, 400), col = "yellow")
dev.off()