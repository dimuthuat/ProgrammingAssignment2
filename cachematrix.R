## Put comments here that give an overall description of what your
## functions do
##makeCacheMatrix function creates a special matrix object that can cache its inverse, while cacheSolve function computes the inverse of the special matrix returned by makeCacheMatrix.

## Write a short comment describing this function
## makeCacheMatrix function creates a special matrix object.The function serves to set and get the value of the matrix object and set and get the value of the inverse of the matric object. 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <-function()x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- Function() inv
  list(set = set, get = get
       setInverse = setInverse
       getInverse = getInverse
}

## Write a short comment describing this function
## cacheSolve function calculates the inverse of the special vector calculated by makeCacheMatrix function. It first checks to see whether the inverse is already calculated before calculating the inverse of the matrix. Function is written assuming matrix is always invertible and that solve(x) returns the inverse.

cacheSolve <- function(x, ...) {
  inv <- X$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- X$get()
  inv <- solve(mat,...)
  x$setInverse(inv)
  inv
}
