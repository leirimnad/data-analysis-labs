options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
popularity <- songs$popularity

print(paste("Дисперсія:", var(popularity)))
print(paste("Стандартне відхилення:", sd(popularity)))
print(paste("Коефіцієнт варіації:", sd(popularity) / mean(popularity) * 100, "%"))
print(paste("Ймовірнісне відхилення: ", mean(quantile(popularity, probs=c(.25, .75)))))
print(paste("Розмах вибірки: ", max(popularity)-min(popularity)))
print(paste("Інтервал концентрації розподілу: (", 
            mean(popularity)-3*sd(popularity), 
            ",",
            mean(popularity)+3*sd(popularity),
            ")"
            ))
