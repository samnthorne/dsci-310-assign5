# function that splits a string into a vector

#' Split a string to vector
#'
#' @param x A character vector within one string
#' @param split the delimiter of the character vector x
#'
#' @return A character vector
#' @export
#'
#' @examples
#' x <- "i,am,beautiful"
#' strsplit1(x, split = ",")
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}

