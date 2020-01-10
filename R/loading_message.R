.onAttach <- function(libname, pkgname) {
  packageStartupMessage("HEADS UP: R's default %in% function has been overwritten! Read the package description for more details.")
}
