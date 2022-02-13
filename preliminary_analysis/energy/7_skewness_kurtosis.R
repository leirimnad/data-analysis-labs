install.packages("moments")
library(moments)

options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')
energy <- songs$energy

print(paste("Коефіцієнт асиметрії:", skewness(energy)))
print(paste("Коефіцієнт ексцесу:", kurtosis(energy)))