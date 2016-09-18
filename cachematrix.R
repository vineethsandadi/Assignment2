## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  setmat <- function(y) {
  x <<- y
  z <<- NULL
  }
  getmat <- function() x
  setinv <- function(mat_inv) z <<- mat_inv
  getinv <- function() z
  list(setmat = setmat, getmat = getmat,
  setinv = setinv,
  getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z <- x$getinv()
  if(!is.null(z)) {
   message("Fetching the inverse from cached data")
   return(z)
   }
        
          z <- solve(x$getmat())
          x$setinv(z)
          z
}
