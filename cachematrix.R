## Put comments here that give an overall description of what your
## functions do

## La funci�n makeCacheMatrix crea un objeto especial denominado matriz
##que puede guardar la inversa en el cach�, la cual, es una matriz invertible

makeCacheMatrix <- function(a = matrix()) {
  
  inversa <- NULL
  y <- function(n) {
    a <<- d
    inversa <<- NULL
  }
  get <- function() a
  setinv <- function(inverse) inversa <<- inverse
  getinv <- function() inversa
  list(y = y, get = get, setinv = setinv, getinv = getinv)
}

## Write a short comment describing this function
## La funci�n cacheSolve calcula la inversa de la matriz
## obtenida de la funci�n makeCacheMatrix. Si la inversa ya
## ha sido calculada y la matriz no ha cambiado entonces devuelve
## la inversa guardada en el cache

cacheSolve <- function(a, ...) {
  
  inversa <- a$getinv()
  if(!is.null(inversa)) {
    print("Obteniendo el resuldato")
    return(inversa)
  }
  data <- a$get()
  inversa <- solve(data, ...)
  a$setinv(inversa)
  inversa
}