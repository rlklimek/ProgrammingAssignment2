## This function takes a matrix inputed by the user an eith caches it or inverts the matrix

## This function takes the input from the user and saves it in a cache

makeCacheMatrix <- function(x = matrix()) {
 	m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## This function creates an inverse of the cashed function from makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
    	if(!is.null(m)) {
    		message("getting cached data")
     		return(m)
    	}
    	data <- x$get()
    	m <- solve(data, ...)
    	x$
}
 