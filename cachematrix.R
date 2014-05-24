# This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 #initialize
  m <- NULL
#assign a value to an object in an environment that is different from the current   
  set <-# This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
 #initialize
  m <- NULL
#assign a value to an object in an environment that is different from the current   
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
#getValue
  get <- function() x
#set inverse of a matrix
  setInv <- function(ginv) m <<- ginv
#get inverse of a matrix
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
 #get inverse of the function
  m <- x$getInv()
  # if m doesn't exist, print message and return m
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # if m does exist, compute
  data <- x$get()
  m <- ginv(data, ...)
  x$setInv(m)
  m 
}
 function(y) {
    x <<- y
    m <<- NULL
  }
#getValue
  get <- function() x
#set inverse of a matrix
  setInv <- function(ginv) m <<- ginv
#get inverse of a matrix
  getInv <- function() m
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)

}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
 #get inverse of the function
  m <- x$getInv()
  # if m doesn't exist, print message and return m
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # if m does exist, compute
  data <- x$get()
  m <- ginv(data, ...)
  x$setInv(m)
  m 
}

