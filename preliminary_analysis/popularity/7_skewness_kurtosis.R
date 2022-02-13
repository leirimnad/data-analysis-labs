install.packages("moments")
library(moments)

options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity

print(paste("Коефіцієнт асиметрії:", skewness(popularity)))
print(paste("Коефіцієнт ексцесу:", kurtosis(popularity)))

plot(density(popularity),
     col="blue",
     main="Порівняння щільності popularity з відповідним нормальним розподілом",
     xlab="Популярність", 
     ylab="Щільність", 
     )
lines(dnorm(x=seq(0, 100), mean=mean(popularity), sd=sd(popularity)),col="green")
