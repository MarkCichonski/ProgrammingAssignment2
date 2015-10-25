## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
        
        # holds the cached value 
        # initially nothing is cached so set it to NULL
        cache <- NULL
        
        # stores the matrix
        setMatrix <- function(newValue) {
                x <<- newValue
                cache <<- NULL
        }

        # returns stored matrix
        getMatrix <- function() {
                x
        }

        cacheInverse <- function(solve) {
                cache <<- solve
        }

        getInverse <- function() {
                cache
        }
        
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## For programming assignment 2

cacheSolve <- function(x, ...) {
       
}

# The following function calculates the inverse of a matrix created with 
# previous
cacheSolve <- function(z, ...) {
        # get the cached value
        inverse <- z$getInverse()
        # if there is cached value get it
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        # else, caclulate the inverse and store it in
        # cache
        data <- z$getMatrix()
        inverse <- solve(data)
        z$cacheInverse(inverse)
        
        # return the inverse
        inverse
}
