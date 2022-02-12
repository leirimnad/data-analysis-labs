install.packages("moments")
library(moments)

options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration

print(paste("Коефіцієнт асиметрії:", skewness(durations)))
print(paste("Коефіцієнт ексцесу:", kurtosis(durations)))

plot(density(durations),
     col="blue",
     main="Порівняння щільності duration з відповідним нормальним розподілом",
     xlab="Тривалість, мс", 
     ylab="Щільність", 
     )
lines(dnorm(x=seq(0, 700000), mean=mean(durations), sd=sd(durations)),col="green")
