##' Debug objects \code{printf}-style
##' 
##' Thanks, William Dunlap!
##' <https://stat.ethz.ch/pipermail/r-devel/2011-May/061098.html>
##' @param ... Objects to be debugged
##' @param where Environment in which to evaluate the expressions
##' @param strict.width \code{str}-option \code{strict.width} (\emph{quod vide})
##' @param digits.d \code{str}-option \code{digits.d} (\emph{quod vide})
##' @param vec.len \code{str}-option \code{vec.len} (\emph{quod vide})
##' @param formatNum \code{str}-option \code{formatNum} (\emph{quod vide})
##' @return \code{NULL}
debug <- function(...,
                  where=parent.frame(),
                  strict.width=strOptions()$strict.width,
                  digits.d=strOptions()$digits.d,
                  vec.len=strOptions()$vec.len,
                  formatNum=strOptions()$formatNum) {
  promises <- as.list(substitute(list(...)))[-1]
  str(structure(Map(function(promise)
                    eval(promise, envir=where),
                    promises),
                names=Map(deparse, promises)),
      strict.width=strict.width,
      digits.d=digits.d,
      vec.len=vec.len,
      formatNum=formatNum)
}
