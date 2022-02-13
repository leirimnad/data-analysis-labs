options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo

boxplot(
  tempo,
  main = "",
  xlab = "Темп треку, удари в хвилину",
  ylab = "",
  horizontal = TRUE,
  notch = FALSE
  )
