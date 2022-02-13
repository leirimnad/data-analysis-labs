install.packages("moments")
library(moments)

options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo

print(paste("Коефіцієнт асиметрії:", skewness(tempo)))
print(paste("Коефіцієнт ексцесу:", kurtosis(tempo)))

plot(density(tempo),
     col="blue",
     main="Порівняння щільності tempo з відповідним нормальним розподілом",
     xlab="Темп треку, удари в хвилину", 
     ylab="Щільність", 
     )
lines(dnorm(x=seq(0, max(tempo)), mean=mean(tempo), sd=sd(tempo)),col="green")
