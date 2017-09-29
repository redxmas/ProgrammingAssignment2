## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## There are two variables, x and m
## Since it is assumed that the matrix is invertible,don't need to test the row and column numbers
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL 
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        # Functions for getting and setting cached value
        get <- function() x
        # Use Solve function to get the inverse
        setInverse <- function(solve) m <<- solve
        getInverse <- function() m
        # return a list as output
        list(
                set = set, 
                get = get,
                setInverse = setInverse,
                getInverse = getInverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getInverse()
        # If there's a cached matrix
        if(!is.null(m)) {
                message("Getting cached data")
                return(m)
        }
        # If there's no cached matrix available.
        data <- x$get()
        m <- solve(data, ...)
        x$setInverse(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
