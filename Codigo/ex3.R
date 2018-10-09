packrat::status()

packrat::restore()

packrat::snapshot()

#EXERCICIO 2
exercicio3 <- data.frame("Número de filhos" = c(0,1,2,3,4,5,"Mais de 5"), "Famílias" = c(17,20,28,19,7,4,5))
View(exercicio3)
write.csv(exercicio3, file="Dados/exercicio3.csv")

###MODA
uniq = unique(exercicio3$Famílias)
moda = uniq[which.max(tabulate(match(exercicio3$Famílias, uniq)))]

###MEDIANA
mediana = median(exercicio3$Famílias)
png(filename = "Graficos/ex3.png", width = 500, height = 500)
barplot(c("Moda"=moda, "Mediana"=mediana))