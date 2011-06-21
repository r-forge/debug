##' Debug objects \code{printf}-style
##' 
##' Thanks, William Dunlap!
##' <https://stat.ethz.ch/pipermail/r-devel/2011-May/061098.html>
##' @param ... Objects to be debugged
##' @return \code{NULL}
debug <- function(..., where=parent.frame()) {
  promises <- as.list(substitute(list(...)))[-1]
  ## str(structure(Map(Curry(eval, envir=where, enclos=where), promises),
  str(structure(Map(function(promise)
                    eval(promise, envir=where),
                    promises),
                names=Map(deparse, promises)))
}
