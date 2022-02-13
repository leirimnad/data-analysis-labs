options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy

print(paste("Дисперсія:", var(energy)))
print(paste("Стандартне відхилення:", sd(energy)))
print(paste("Коефіцієнт варіації:", sd(energy) / mean(energy) * 100, "%"))
print(paste("Ймовірнісне відхилення: ", mean(quantile(energy, probs=c(.25, .75)))))
print(paste("Розмах вибірки: ", max(energy)-min(energy)))
print(paste("Інтервал концентрації розподілу: (", 
            mean(energy)-3*sd(energy), 
            ",",
            mean(energy)+3*sd(energy),
            ")"
            ))
