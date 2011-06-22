\name{debug}
\alias{debug}
\title{Debug objects printf-style...}
\usage{debug(..., where=parent.frame(),
    strict.width=strOptions()$strict.width,
    digits.d=strOptions()$digits.d, vec.len=strOptions()$vec.len,
    formatNum=strOptions()$formatNum)}
\description{Debug objects \code{printf}-style}
\details{Thanks, William Dunlap!
<https://stat.ethz.ch/pipermail/r-devel/2011-May/061098.html>}
\value{\code{NULL}}
\arguments{\item{...}{Objects to be debugged}
\item{where}{Environment in which to evaluate the expressions}
\item{strict.width}{\code{str}-option \code{strict.width} (\emph{quod vide})}
\item{digits.d}{\code{str}-option \code{digits.d} (\emph{quod vide})}
\item{vec.len}{\code{str}-option \code{vec.len} (\emph{quod vide})}
\item{formatNum}{\code{str}-option \code{formatNum} (\emph{quod vide})}}
