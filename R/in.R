#' replacing the \%in\% function with the all.equal equivalent
#'
#' @param x a vector whose values are being evaluated for matches
#' @param y a vector whose values x is looking for matches in
#' @param tol the tolerance for differences between values of x and y to still be considered a match
#' @return A logical vector of length x
#' @examples
#' x <- seq(from = 1, to = 3, by = 0.1)
#' y <- c(3, 2.4, 1.8, 1.4)
#' x %in% y
#'

`%in%` <- function(x,y, tol = sqrt(.Machine$double.eps)) {
  if (is.numeric(x) & is.numeric(y)) {
    out <- logical(length(x))
    for(i in 1:length(x)) out[i] <- any(abs(x[i] - y) <= tol)
    out
  } else{
    match(x, y, nomatch = 0) > 0
  }

}

