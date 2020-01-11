#' \%in\% with tolerance
#'
#' This function replaces R's default \code{\link[base]{\%in\%}} function with an \code{\link[base]{all.equal}} equivalent. It is slower than the default \code{\link[base]{\%in\%}}, but it is comparable to the speed differences between \code{\link[base]{identical}} and \code{\link[base]{all.equal}}. It takes a lefthand side (LHS) and righthand side (RHS) vector, evaluates whether each value on the LHS is found somewhere in the RHS, within the matching tolerance, and returns a logical vector of length(LHS).
#'
#' @export
#' @param x a vector whose values are being evaluated for matches in y
#' @param y a vector whose values x is being evaluated for matches in
#' @param tol the tolerance for differences between values of x and y to still be considered a match, by default set to \code{sqrt(.Machine$double.eps)}
#' @return A logical vector of length x
#' @examples
#' x <- seq(from = 1, to = 3, by = 0.1)
#' y <- c(3, 2.4, 1.8, 1.4)
#' x %in% y
#'
#' # If you want a different tolerance value you need
#' # to use the standard function form:
#' `%in%`(x, y, tol = 0.00001)

`%in%` <- function(x,y, tol = sqrt(.Machine$double.eps)) {
  if (is.numeric(x) & is.numeric(y)) {
    out <- logical(length(x))
    for(i in 1:length(x)) out[i] <- any(abs(x[i] - y) <= tol)
    out
  } else{
    match(x, y, nomatch = 0) > 0
  }

}

