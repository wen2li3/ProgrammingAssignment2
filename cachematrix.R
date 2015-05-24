## Put comments here that give an overall description of what your
## functions do

#Lexical Scoping - caching the inverse of a matrix

#The makeCacheMatrix function creates a special "matrix",
#which is a list containing a function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL

#1 set the value of the matrix

set <- function(y)
{
x <<- y
i <<- NULL
}

#2 get the value of the matrix

get <- function() x

#3 set the value of the inverse of the matrix

setinverse <- function(inverse) i <<- inverse

#4 get the value of the inverse of the matrix

getinverse <- function() i
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        #The cacheSolve function calculates the inverse of the special "matrix"
#Return a matrix that is the inverse of 'x'
i <- x$getinverse()

#it first checks to see if the inverse has already been calculated

if(!is.null(i))
{
message("getting cached data")
return(i)

#it gets the inverse from the cache and skips the computation

}
data <- x$get()

#it calculates the inverse of the matrix and sets the value of the inverse in the cache

i <- solve(data, ...)
x$setinverse(i)
i
        
        ## Return a matrix that is the inverse of 'x'
}
