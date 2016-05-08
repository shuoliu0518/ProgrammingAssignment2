## Put comments here that give an overall description of what your
## functions do
## Calculate the inverse matrix, if once calculated, then use the cache, if not, will do the calculation
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inversematrix <- NULL 
  
  set <- function(y) 
  {
    m <<- y
    inversematrix <<- NULL
  }
  
  get <- function()
  {
    m
  }
  

  setinverse <- function(inv) 
  {
    inversematrix <<- inv
  }
  
 
  getinverse <- function() 
  {
    inversematrix
  }
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)    

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- m$getinverse()
  if(!is.null(inv)) 
  {
    message("getting cached data")
    return(inv)
  }
  
  data <- m$get()
  inv <- solve(data, ...)
  m$setinverse(inv)
  inv    
}
