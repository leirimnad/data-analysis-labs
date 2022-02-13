options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity

summary(popularity)
quantile(popularity, probs = seq(.1, .9, by = .1))
