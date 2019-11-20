
# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


add <- function(a, b){
  a + b
}


addC <- function(a, b){

  result <- .C("addC_interface",
             a = as.integer(a),
             b = as.integer(b),
             sum = integer(1),
             PACKAGE="NewPackage")

  result$sum
}



