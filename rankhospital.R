rankhospital <- function(state,outcome,rank){
      a <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
      b <- data.frame(a)
      c <- subset(b , b$State == state)
      d <- c('Hospital.Name', paste('Hospital.30.Day.Death..Mortality..Rates.from.',outcome,sep=''))
      e <- c[,d]
      num <- rank
      if (rank == 'worst') {
            num <- nrow(e)
      }
      if (rank == 'best') {
            num <- 1
      }
      f <- as.numeric(e[,2])
      g <- order(f)
      h <- e[g,]
      i <- h[num,1]
      return(h)
}