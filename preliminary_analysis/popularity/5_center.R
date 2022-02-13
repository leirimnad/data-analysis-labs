options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity

print(paste("Вибіркове середнє арифметичне: ", mean(popularity)))
print(paste("Середнє геометричне: ", exp(mean(log(popularity)))))
print(paste("Середнє гармонічне: ", 1/mean(1/popularity)))

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

print(paste("Мода: ", Mode(popularity)))
print(paste("Медіана: ", median(popularity)))
