## Put comments here that give an overall description of what your
## functions do

## Create a second matrix based on a first one and cache the inverse
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  
  set <- function(n) {
    x <<- n
    i <<- NULL
  }
  
  get <- function() 
    x
  
  setinverse <- function(inverse)
    i <<- inverse
  
  getinverse <- function()
    i
  
  list(set = set, get= get, setinverse = setinverse, getinverse = getinverse)
  
}


## Display the inverse of the first matrix, if nothing is retrieved,
## get the first matrix and inverse it. 
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}


