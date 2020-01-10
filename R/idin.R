#' this is R's original %in% function
#'
#' @param x: vector for which you're looking for matches
#' @param y: vector you're looking for matches in
#'
#'
#' @return A logical vector
#' @export
#'
#' @examples
#' x <- seq(from = 1, to = 3, by = 0.1)
#' y <- c(3, 2.4, 1.8, 1.4)
#' x %idin% y
`%idin%` <- function(x, table) match(x, table, nomatch = 0) > 0
