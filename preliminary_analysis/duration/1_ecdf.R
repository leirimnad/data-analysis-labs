options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration
plot(ecdf(durations), 
     main="Емпірична функція розподілу для змінної duration", 
     xlab="Тривалість, мс", 
     ylab="Накопичена ймовірність", 
     col = "blue"
     )