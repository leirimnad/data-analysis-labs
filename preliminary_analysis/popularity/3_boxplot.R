options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity

boxplot(
  popularity,
  main = "",
  xlab = "Популярність",
  ylab = "",
  horizontal = TRUE,
  notch = FALSE
  )
