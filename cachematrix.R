## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
solve(c) 
solve(c) %*% c

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() 
  setinverse <- function(inverse) m <<- solve #solve is the function that compute the inverse of a matrix
  a2 <- c(2, 3, 2) 
  a3 <- c(5, 2, 4) 
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inverse(data, ...)
  x$setinverse(m)
  m
}
