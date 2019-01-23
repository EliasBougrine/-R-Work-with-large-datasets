best <- function(state,outcome) {
      a <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
      b <- data.frame(a)
      c <- subset(b , b$State == state)
      d <- c('Hospital.Name',paste('Hospital.30.Day.Death..Mortality..Rates.from.',outcome,sep=''))
      e <- c[,d]
      f <- which.min(e[,2])
      g <- e[f,1]
      return(g)
}