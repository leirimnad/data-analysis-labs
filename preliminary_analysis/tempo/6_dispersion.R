options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
tempo <- songs$tempo

print(paste("Дисперсія:", var(tempo)))
print(paste("Стандартне відхилення:", sd(tempo)))
print(paste("Коефіцієнт варіації:", sd(tempo) / mean(tempo) * 100, "%"))
print(paste("Ймовірнісне відхилення: ", mean(quantile(tempo, probs=c(.25, .75)))))
print(paste("Розмах вибірки: ", max(tempo)-min(tempo)))
print(paste("Інтервал концентрації розподілу: (", 
            mean(tempo)-3*sd(tempo), 
            ",",
            mean(tempo)+3*sd(tempo),
            ")"
            ))
