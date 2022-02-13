options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity
plot(ecdf(popularity), 
     main="Емпірична функція розподілу для змінної popularity", 
     xlab="Популярність", 
     ylab="Накопичена ймовірність", 
     col = "blue"
     )