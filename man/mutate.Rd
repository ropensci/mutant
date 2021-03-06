% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mutate.R
\name{mutate}
\alias{mutate}
\title{Make mutations across many functions}
\usage{
mutate(x)
}
\arguments{
\item{x}{a list of output from \code{\link[=parse_fxns]{parse_fxns()}}}
}
\value{
a list of the above
}
\description{
Goal here is to input many functions but only
make one mutation in one the functions to better isolate
the effect of the mutation. See Details.
}
\details{
use a while loop internally; attempt to mutate each function
until we make a successful mutation, and then return the complete
set of functions with one function with one mutation
}
\examples{
\dontrun{
foo <- function(x) {
  if (x == 1) x else 5
}
bar <- function(w) {
  if (w == 10) w else 5
}
mutate(list(foo, bar))
}
}
\concept{mutate}
\keyword{internal}
