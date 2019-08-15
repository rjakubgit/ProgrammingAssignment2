### The functions "makeCacheMatrix" and "cacheSolve" allow you to calculate and to cache the inverse of a matrix



makeCacheMatrix <- function(x = matrix()) 

## This function creates a special "matrix" object which is really a list containing four functions:
## 1. set the matrix
## 2. get the matrix
## 3. set the cached inverse matrix
## 4. get the inverse matrix

{
        m <- NULL
        set <- function(y) {
                x <<- y                       # setiing the matrix
                m <<- NULL                    # cleaning the cached inverse matrix
        }
        get <- function() x                              # function that gets the matrix
        setinverse <- function(inverse) m <<- inverse    # function that sets the cached inverse matrix
        getinverse <- function() m                       # function that gets the inverse matrix
        list(set = set, get = get,                       # list of all four functions
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
