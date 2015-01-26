## Construct a cacheMatrix and get the inverse matrix of the cacheMatrix.


## Construct a cacheMatrix

makeCacheMatrix <- function(x = matrix()) {
  inversematrix <- NULL
  set <- function(y) {
    x <<- y
    inversematrix <<- NULL
  }
  get <- function() x
  setinversematrix <- function(inversemat) inversematrix <<- inversemat
  getinversematrix <- function() inversematrix
  list(set= set, get = get, setinversematrix = setinversematrix, getinversematrix = getinversematrix)
}


## Get the inverse matrix of a cacheMatrix.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inversematrix <- x$getinversematrix()
  if(!is.null(inversematrix)) {
    message("Getting cached data...")
    return(inversematrix)
  }
  
  inversemat = solve(x$get())
  x$setinversematrix(inversemat)
  inversemat
}
