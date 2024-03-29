% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/internals.R
\name{get_function_body}
\alias{get_function_body}
\title{get the body of a function}
\usage{
get_function_body(object)
}
\arguments{
\item{object}{The function from which to extract the body. \cr Should have
been sourced with keep.source = TRUE.}
}
\value{
\code{character(n)} the function body's lines.
}
\description{
\code{\link{body}} reformats the code (see \emph{Examples} and
\emph{Details}).
}
\details{
If we want to check a function as it is coded in a file, we need to get the
original thing as coded in the file, no optimized version.
In \code{\link{sys.source}} and \code{\link{source}}, keep.source = FALSE
seems to use \code{\link{body}}.
So we have to do it all over after sourcing with keep.source = TRUE (in
\code{\link{check_functions_in_file}}).
}
\keyword{internal}
