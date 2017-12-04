## Put comments here that give an overall description of what your
#1. First you will make a matrix by using makeCacheMatrix function. For example: x<-makeCacheMatrix(matrix(c(5,1,0,3,-1,2,4,0,1),nrow=3,byrow=TRUE))
#2. Then you can get the inverse of matrix x by calling cacheSolve(x). If matrix x is in the cache, this function will get the result from cache data
## functions do

## Write a short comment describing this function
#create a cache matrix which includes 4 functions:
#set the value of the matrix
#get the value of the matrix
#set the value of the inverse
#get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInvert <- function(Invert) m <<- Invert
  getInvert <- function() m
  list(set = set, get = get,
       setInvert = setInvert,
       getInvert = getInvert)
}


## Write a short comment describing this function
#calculate the inverse of x
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInvert()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setInvert(m)
        m
}
