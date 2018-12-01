##  Caching the Inverse of a Matrix-Coursera R programming
## a special “matrix” object that can cache its inverse

makeCacheMatrix <- function(mtrx = matrix()) {
  ivs <- NULL
  set <- function(y) {
    mtrx<<- y
    ivs <<- NULL
  }
    
get<-function(){mtrx}
setInverse <- function(SolutionMatrix) ivs <<-SolutionMatrix
getInverse <- function() ivs
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve:

cacheSolve <- function(x, ...) {
  ivs<- x$getInverse()
  if(!is.null(ivs)) {
    message("getting cached data")
    return(ivs)
  }
  data <- x$get()
  ivs <- solve(data)
  x$setInverse(ivs)
  ivs
}
