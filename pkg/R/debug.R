##' Debug objects \code{printf}-style
##' 
##' Thanks, William Dunlap!
##' <https://stat.ethz.ch/pipermail/r-devel/2011-May/061098.html>
##' @param ... Objects to be debugged
##' @return \code{NULL}
debug <- function(...) {
  promises <- as.list(substitute(list(...)))[-1]
  str(structure(Map(eval, promises),
                names=Map(deparse, promises)))
}
