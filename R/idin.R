#' Rewrite of R's original \%in\% function
#'
#' This is the same as R's original \code{\link[base]{\%in\%}}, but written as shorthand for "identical in".
#'
#' @export
#' @param x a vector whose values are being evaluated for matches
#' @param y a vector whose values x is looking for matches in
#' @return A logical vector of length x
#' @examples
#' x <- seq(from = 1, to = 3, by = 0.1)
#' y <- c(3, 2.4, 1.8, 1.4)
#' x %idin% y
#'
`%idin%` <- function(x, y){
  match(x, y, nomatch = 0) > 0
}
