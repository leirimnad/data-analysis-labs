options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
durations <- songs$duration

print(paste("Дисперсія:", var(durations)))
print(paste("Стандартне відхилення:", sd(durations)))
print(paste("Коефіцієнт варіації:", sd(durations) / mean(durations) * 100, "%"))
print(paste("Ймовірнісне відхилення: ", mean(quantile(durations, probs=c(.25, .75)))))
print(paste("Розмах вибірки: ", max(durations)-min(durations)))
print(paste("Інтервал концентрації розподілу: (", 
            mean(durations)-3*sd(durations), 
            ",",
            mean(durations)+3*sd(durations),
            ")"
            ))
