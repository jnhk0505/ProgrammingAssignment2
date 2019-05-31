## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix creates a special matrix object that can cache its inverse
## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {## x is the matrix
  inv <- NULL                              ## inv holds inverse of the matrix x, first it is NULL
  set <- function(y) {                     ## set function to hold inverse value, if the matrix changes then inv value is NULL 
    x <<- y
    inv <<- NULL
  }
  get <- function() x                                       
  setInverse <- function(inverse) inv <<- inverse ##get and set are used to assign and call inv
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
}
