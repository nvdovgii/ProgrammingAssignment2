## our programm 2 functions that cache the matrix inverse 

## the function make a matrix-object with its inverse


makeCacheMatrix <- function(x = matrix()) {
        
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
        

}


## function returns inversed "x" 



cacheSolve <- function(x, ...) {

        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}




##Ex.:
        
##> m <- makeCacheMatrix(x)
##> cacheSolve(m)
##getting cached data
##$set
##function (y) 
##{
##        x <<- y
##       m <<- NULL
##}
##<environment: 0x0000000019158c60>
##        
##        $get
##function () 
##        x
##<environment: 0x0000000019158c60>
        
##        $setinv
##function (solve) 
##        m <<- solve
##<environment: 0x0000000019158c60>
        
##        $getinv
##function () 
##        m
##<environment: 0x0000000019158c60>
        
##        > m$get()
##[,1] [,2] [,3] [,4]
##[1,]    1    3    5    7
##[2,]    2    4    6    8

