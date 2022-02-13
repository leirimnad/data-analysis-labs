options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration

print(paste("Вибіркове середнє арифметичне: ", mean(durations)))
print(paste("Середнє геометричне: ", exp(mean(log(durations)))))
print(paste("Середнє гармонічне: ", 1/mean(1/durations)))

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

print(paste("Мода: ", Mode(durations)))
print(paste("Медіана: ", median(durations)))
