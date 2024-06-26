% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print.R
\name{knit_print.equation}
\alias{knit_print.equation}
\title{Print 'LaTeX' equations in R Markdown environments}
\usage{
\method{knit_print}{equation}(
  x,
  ...,
  tex_packages = "\\\\renewcommand*\\\\familydefault{\\\\rmdefault}"
)
}
\arguments{
\item{x}{'LaTeX' equation built with \code{\link{extract_eq}}}

\item{...}{not used}

\item{tex_packages}{A string with LaTeX code to include in the header,
usually to include LaTeX packages in the output.}
}
\value{
A string with the equation formatted according to R Markdown's output
format (different output for HTML, PDF, docx, gfm, markdown_strict). The
format is detected automatically, so, you do not have to worry about it.
}
\description{
Print 'LaTeX' equations built with \code{\link{extract_eq}} nicely in R Markdown environments.
}
