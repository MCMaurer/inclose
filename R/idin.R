#' replacing the %in% function with the all.equal equivalent
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
#' x %in% y
`%in%` <- function(x,y, tol = sqrt(.Machine$double.eps)) {
  out <- logical(length(x))
  for(i in 1:length(x)) out[i] <- any(abs(x[i] - y) <= tol)
  out
}

#`%idin%` <- function(x, table) match(x, table, nomatch = 0) > 0
