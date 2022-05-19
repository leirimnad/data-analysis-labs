options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')

model <- lm(energy ~ 
              popularity + loudness + tempo + popularity + danceability 
              + acousticness + speechiness + valence + duration,
            data = songs)
cor.test(model$model$`energy`, model$fitted.values)

summary(model)


model <- lm(energy ~ 
              popularity + loudness + tempo + popularity + danceability 
            + acousticness + speechiness + valence,
            data = songs)
summary(model)

confint(model)

sigma(model)*100/mean(songs$energy)

qqnorm(model$residuals)
qqline(model$residuals, col="red")

plot(model$fitted.values, model$residuals, xlab="predicted", ylab="residuals")
summary(lm(model$fitted.values ~ model$residuals))
