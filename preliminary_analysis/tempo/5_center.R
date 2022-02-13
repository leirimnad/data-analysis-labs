options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo

print(paste("Вибіркове середнє арифметичне: ", mean(tempo)))
print(paste("Середнє геометричне: ", exp(mean(log(tempo)))))
print(paste("Середнє гармонічне: ", 1/mean(1/tempo)))

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

print(paste("Мода: ", Mode(tempo)))
print(paste("Медіана: ", median(tempo)))
