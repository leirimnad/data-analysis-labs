options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy
plot(ecdf(energy), 
     main="Емпірична функція розподілу для змінної energy", 
     xlab="Енергічність", 
     ylab="Накопичена ймовірність", 
     col = "blue"
     )