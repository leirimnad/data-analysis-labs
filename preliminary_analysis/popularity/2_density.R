options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity
plot(hist(popularity, breaks=100),
     main="Щільність розподілу змінної popularity", 
     xlab="Популярність", 
     ylab="Щільність", 
     col = "blue"
     )
