options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration

boxplot(
  durations,
  main = "",
  xlab = "Тривалість, мс",
  ylab = "",
  horizontal = TRUE,
  notch = FALSE
  )
