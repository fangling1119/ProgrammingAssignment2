## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x<<- y
    i <<- NULL
  }
  get <- function() x
  setinver <- function(inver) i <<- inver
  getinver <- function() i
  a<<-list(set = set, get = get,
       setinver = setinver,
       getinver = getinver)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
  i <- a$getinver()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- a$get()
  i <- solve(data, ...)
  a$setinver(i)
  i
}
