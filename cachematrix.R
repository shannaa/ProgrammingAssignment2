## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setx <- function(y) {
    x <<- y
    m <<- NULL
  }
  getx <- function() x 
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(setx = setx, getx = getx,setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$getx()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
