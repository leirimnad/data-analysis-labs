options(scipen=5)
songs <- read.csv(file = 'tiktok.csv')



check_correlation <- function(x, a, b, alpha=0.05){
  n <- length(x)
  p <- 3
  indcor <- summary(lm(x ~ a + b))$r.squared
  print(paste("Індекс кореляції:", indcor))
  
  if(indcor == 0){
    print("Зв'язку між змінними немає.")
  } else if (indcor == 1){
    print("Зв'язок між змінними функціональний.")
  } else {
    
    # Перевірка гіпотези I=0
    f <- (indcor/(1-indcor))*((n-p)/(p-1))
    fa <- qf(1-alpha, p-1, n-p)
    
    if(f < fa){
      print("Зв'язок між змінними не є істотним.")
      print("Прийнято гіпотезу про незначимість індексу кореляції:")
      print(paste(f, "<", fa))
    } else {
      print("Зв'язок між змінними є істотним.")
      print("Гіпотезу про незначимість індексу кореляції не прийнято:")
      print(paste(f, ">=", fa))
    }
    
  }
  return(indcor)
}


install.packages("nloptr")
library("nloptr")

max_alpha <- function(x, a, b){
  n <- length(x)
  p <- 3
  indcor <- summary(lm(x ~ a + b))$r.squared
  f <- (indcor/(1-indcor))*((n-p)/(p-1))
  
  eval_fa <- function(x){
    return (qf(1-x, p-1, n-p))
  }
  
  tol <- 10^-7
  eval_g_ineq <- function(x){
    return (f - eval_fa(x)+tol)
  }
  
  lb <- 0
  ub <- 1
  x0 <- 0.05
  
  local_opts <- list( "algorithm" = "NLOPT_LD_MMA", "xtol_rel" = 1.0e-15 )
  opts <- list( "algorithm"= "NLOPT_GN_ISRES",
                "xtol_rel"= 1.0e-15,
                "maxeval"= 160000,
                "local_opts" = local_opts,
                "print_level" = 0 )
  
  res <- nloptr ( x0 = x0,
                  eval_f = eval_fa,
                  lb = lb,
                  ub = ub,
                  eval_g_ineq = eval_g_ineq,
                  opts = opts
  )
  
  return(floor(res$solution/tol)*tol)
}

check_correlation(songs$duration, songs$popularity, songs$tempo)
check_correlation(songs$tempo, songs$duration, songs$popularity)
check_correlation(songs$popularity, songs$tempo, songs$duration)

max_alpha(songs$duration, songs$popularity, songs$tempo)
max_alpha(songs$tempo, songs$duration, songs$popularity)
max_alpha(songs$popularity, songs$tempo, songs$duration)

