## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mi <- NULL
  set <- function(y){
    x <<- y
    mi <<- NULL
  }
  get <- function()x
  setinversematrix <- function(inverse) mi <<- inverse
  getinversematrix <- function() mi 
  list(set = set, get = get, 
       setinversematrix = setinversematrix, 
       getinversematrix = getinversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mi <- x$getinversematrix()
  if(!is.null(mi)){
    message("getting cached data")
    return(mi)
  }
  data <- x$get()
  mi <- solve(data,...)
  x$setinversematrix(mi)
  mi
  
}
