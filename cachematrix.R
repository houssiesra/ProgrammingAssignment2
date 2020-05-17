## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  jam <- NULL
  set <- function(y){
    x <<- y
    jam <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) jam <<- inverse
  getInverse <- function() jam 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  jam <- x$getInverse()
  if(!is.null(jam)){
    message("getting cached data")
    return(jam)
  }
  mat <- x$get()
  jam <- solve(mat,...)
  x$setInverse(jam)
  jam
}
