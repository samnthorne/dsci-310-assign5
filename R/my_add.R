
#' Adds 2 numbers
#'
#' @param x Number in numeric form
#' @param y Number in numeric form; defaults to 10.
#'
#' @return a number
#' @export
#'
#' @examples
#'my_add(1, 2)
#'my_add(1)
my_add <- function(x, y = 10) {
  if (any(is.character(x) | is.character(y))) {
    stop('One of your inputs contains a string value')
  } else if (any(is.na(x) | is.na(y))) {
    return(NA)
  } else{
    return(x + y)
  }
}
