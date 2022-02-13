options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy

boxplot(
  energy,
  main = "",
  xlab = "Енергічність",
  ylab = "",
  horizontal = TRUE,
  notch = FALSE
  )
