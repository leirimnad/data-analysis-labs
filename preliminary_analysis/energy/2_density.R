options(scipen=5)

songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy
plot(hist(energy, breaks=1000),
     main="Щільність розподілу змінної energy", 
     xlab="Енергічність", 
     ylab="Щільність", 
     col = "blue"
     )

plot(density(energy),
     main="Щільність розподілу змінної energy", 
     xlab="Енергічність", 
     ylab="Щільність", 
     col = "blue"
)