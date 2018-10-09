packrat::status()

packrat::restore()
packrat::snapshot()

#install.packages("readxl")
#install.packages("qcc")
library(readxl)
library(qcc)

exercicio6 <- read_excel("Dados/exercicio6.xls")

png(filename = "Graficos/ex6.png", width = 500, height = 500)
pareto.chart(exercicio6$`Nº pessoas`, names=exercicio6$Qualidade)
dev.off()