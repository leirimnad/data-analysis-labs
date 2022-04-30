install.packages("moments")
library(moments)

options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')



check_correlation <- function(x, y, alpha){
  n <- length(x)
  p <- 2
  indcor <- summary(lm(x ~ y))$r.squared
  f <- (indcor/(1-indcor))*((n-p)/(p-1))
  fa <- qf(1-alpha, p-1, n-p)
  if(f < fa){
    print("Зв'язок між змінними не є істотним.")
    print("Прийнято припущення про незначимість індексу кореляції:")
    print(paste(f, "<", fa))
  } else {
    print("Зв'язок між змінними є істотним.")
    print("Припущення про незначимість індексу кореляції не прийнято:")
    print(paste(f, ">=", fa))
  }
}

max_alpha <- function(x, y){
  n <- length(x)
  p <- 2
  indcor <- summary(lm(x ~ y))$r.squared
  f <- (indcor/(1-indcor))*((n-p)/(p-1))
  
  calc_fa <- function(alp) {
    t_fa <- qf(1-alp, p-1, n-p)
    if (t_fa < f) {
      return(f+1)
    }
    return(t_fa)
  }
  
  return(optimise(calc_fa, interval = c(0, 1), tol = 0.0000001)$minimum)
}



