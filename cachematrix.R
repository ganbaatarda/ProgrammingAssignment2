## Put comments here that give an overall description of what your functions do 

## Function 1. Create a matrix object that can cache its inverse

## Function 2. Calculate inverse of matrix created. 
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should 
## retrieve the inverse from the cache.

## Write a short comment describing this function 
## Create object, set values of matrix, set and get inverse of x and provide list

makeCacheMatrix <- function(x = matrix()) { 

        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL  
} 

        get <- function() x
        setInverse <- function(solve) inv <<- solve
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function 
## Create inversion object per functions above and set up solver to generate or cache the inverse of x.

cacheSolve <- function(x, ...) { 
        ## Return a matrix that is the inverse of 'x' 
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv     
} 
