cacheSolve <- function(x, ...) {
  
  m<-x$getmatrix() ##Checking the Matrix value
  if(!is.null(m)){ ##If present, get inverse from cache
    message("getting cached data")
    return(m)
    
  }
  ## IF not available get as new and set in cache
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}
