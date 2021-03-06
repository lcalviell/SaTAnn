% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/satann.R
\name{get_ps_fromspliceplus}
\alias{get_ps_fromspliceplus}
\title{Offset spliced reads on plus strand}
\usage{
get_ps_fromspliceplus(x, cutoff)
}
\arguments{
\item{x}{a \code{GAlignments} object with a cigar string}

\item{cutoff}{number representing the offset value}
}
\value{
a \code{GRanges} object with offset reads
}
\description{
This function calculates P-sites positions for spliced reads on the plus strand
}
\seealso{
\code{\link{prepare_for_SaTAnn}}
}
\author{
Lorenzo Calviello, \email{calviello.l.bio@gmail.com}
}
\keyword{Ribo-seQC,}
\keyword{SaTAnn}
