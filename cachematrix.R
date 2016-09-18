## Put comments here that give an overall description of what bour
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  setmat <- function(b) {
  x <<- b
  a <<- NULL
  }
  getmat <- function() x
  setinv <- function(mat_inv) a <<- mat_inv
  getinv <- function() a
  list(setmat = setmat, getmat = getmat,
  setinv = setinv,
  getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  a <- x$getinv()
  if(!is.null(a)) {
   message("Fetching the inverse from cached data")
   return(a)
   }
        
          a <- solve(x$getmat())
          x$setinv(a)
          a
}
