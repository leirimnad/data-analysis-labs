options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy

summary(energy)
quantile(energy, probs = seq(.1, .9, by = .1))
