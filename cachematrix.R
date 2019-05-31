## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix creates a special matrix object that can cache its inverse
## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {## x is the matrix
  inv <- NULL                              ## inv holds inverse of the matrix x, first it is NULL
  set <- function(y) {                     ## set function to hold inverse value, if the matrix stays same then inv value returns as NULL 
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
