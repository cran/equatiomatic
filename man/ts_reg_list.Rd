% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ts_reg_list.R
\docType{data}
\name{ts_reg_list}
\alias{ts_reg_list}
\title{Simulated data for time-series regression}
\format{
A tibble with 1000 rows and 8 variables:
\describe{
\item{x1}{Random normal simulated data.}
\item{x2}{Random normal simulated data.}
\item{ts_rnorm}{Random normal simulated data.}
}
}
\usage{
ts_reg_list
}
\description{
Output from \code{set.seed(42); ts_reg_list <- list(x1 = rnorm(1000), x2 = rnorm(1000), ts_rnorm = rnorm(1000))}.
}
\keyword{datasets}
