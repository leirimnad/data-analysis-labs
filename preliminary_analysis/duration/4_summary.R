options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration

summary(durations)
quantile(durations, probs = seq(.1, .9, by = .1))
