options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration
plot(density(durations),
     main="Щільність розподілу змінної duration", 
     xlab="Тривалість, мс", 
     ylab="Щільність", 
     col = "blue"
     )