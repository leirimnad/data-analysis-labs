options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo

summary(tempo)
quantile(tempo, probs = seq(.1, .9, by = .1))
