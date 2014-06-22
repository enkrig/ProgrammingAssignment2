## Put comments here that give an overall description of what your
## functions do

## Stores a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
	x_inverse <- NULL
	set <- function(y) {
		x <<- y
		x_inverse <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) x_inverse <<- inverse
	getInverse <- function() x_inverse
	list(set = set, get = get,
		 setinverse = setInverse,
		 getinverse = getInverse)
}


## Returns a matrix that is the inverse of the matrix stored in 'x'

cacheSolve <- function(x) {
	x_inverse <- x$getinverse()
	if(!is.null(x_inverse)) {
			message("getting cached data")
			return(x_inverse)
	}
	data <- x$get()
	x_inverse <- solve(data)
	x$setinverse(x_inverse)
	x_inverse
}

