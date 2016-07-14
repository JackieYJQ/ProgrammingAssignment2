## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
## Write a short comment describing this function
## We can use function to create and get a matrix
## At the same time, we can use the function below to compute the inverse of the matirx
## If there is a condition that the inverse has already been there, it will should "getting cache data", otherwise computes it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 i <- x$getInverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setInverse(i)
  i
}
