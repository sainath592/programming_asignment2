## makeCacheMatrix creates a special "matrix", which is really a list
## containing a function to set /get the value of the matrix and 
## set /get the value of the inversion
 

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
  	set <- function(y) {
    	x <<- y
    	inv <- NULL
  }
   get <- function() x   
  setinverse <- function(inv) inv <<- inverse
  getinverse <- function() inv
  list(set = set , get = get , setinverse = setinverse , getinverse = getinverse)
}


## this function calculates the inversion of the special "matrix" created 
## with the above function. However, it first checks to see if the 
## inversion has already been calculated. If so, it gets the mean from the 
## cache and skips the computation. If not, it calculates the inversion of 
## the data and sets the value of the mean in the cache via the setinvr function.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
  	set <- function(y) {
    	x <<- y
    	inv <- NULL
  }
   get <- function() x   
  setinverse <- function(inv) inv <<- inverse
  getinverse <- function() inv
  list(set = set , get = get , setinverse = setinverse , getinverse = getinverse)
}


