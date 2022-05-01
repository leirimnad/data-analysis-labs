options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')

shapiro.test(sample(songs$duration, 5000))
shapiro.test(sample(songs$duration, 5000))
shapiro.test(sample(songs$duration, 5000))
