options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo
plot(hist(tempo, breaks=100),
     main="Щільність розподілу змінної tempo", 
     xlab="Популярність", 
     ylab="Щільність", 
     col = "blue"
     )
