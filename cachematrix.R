## Put comments here that give an overall description of what your
## functions do

## La función makeCacheMatrix crea un objeto espcial denominado matriz
##que puede guardar la inversa en el cache, la cual es una matriz invertible

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## Write a short comment describing this function
## La función cacheSolve calcula la inversa de la matriz
## obtenida de la función makeCacheMatrix. Si la inversa ya
## ha sido calculada y la matriz no ha cambiado entonces devuelve
## la inversa guardada en el cache

cacheSolve <- function(x, ...) {
      
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("Obteniendo el resuldato")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
