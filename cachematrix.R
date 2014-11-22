## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        amatrix <- NULL
        set <- function(y) {
                x <<- y
                amatrix <<- NULL
        }
        get <- function() x
        setinv <- function(solve) amatrix <<- solve
        getinv <- function() amatrix
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
               amatrix <- x$getinv()
               if(!is.null(amatrix)) {
                        message("getting cached data")
                        return(amatrix)
                }
                data <- x$get()
                amatrix <- solve(data, ...)
                x$setinv(amatrix)
                amatrix
        }



