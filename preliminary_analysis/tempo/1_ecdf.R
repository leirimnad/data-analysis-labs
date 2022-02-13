options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo
plot(ecdf(popularity), 
     main="Емпірична функція розподілу для змінної tempo", 
     xlab="Темп треку, удари в хвилину", 
     ylab="Накопичена ймовірність", 
     col = "blue"
     )