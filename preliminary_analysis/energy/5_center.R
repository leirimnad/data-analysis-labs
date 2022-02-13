options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy

print(paste("Вибіркове середнє арифметичне: ", mean(energy)))
print(paste("Середнє геометричне: ", exp(mean(log(energy)))))
print(paste("Середнє гармонічне: ", 1/mean(1/energy)))

Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

print(paste("Мода: ", Mode(energy)))
print(paste("Медіана: ", median(energy)))
