#' this is R's original %in% function
#'
#' @param x: vector for which you're looking for matches
#' @param y: vector you're looking for matches in
#'
#'
#' @return A logical vector of length x
#' @export
#'
#' @examples
#' x <- seq(from = 1, to = 3, by = 0.1)
#' y <- c(3, 2.4, 1.8, 1.4)
#' x %idin% y
`%idin%` <- function(x, y) match(x, y, nomatch = 0) > 0
