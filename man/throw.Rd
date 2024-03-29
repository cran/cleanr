% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/throw.R
\name{throw}
\alias{throw}
\title{Throw a Condition}
\usage{
throw(message_string, system_call = sys.call(-1), ...)
}
\arguments{
\item{message_string}{The message to be thrown.}

\item{system_call}{The call to be thrown.}

\item{...}{Arguments to be passed to
\code{\link[base:structure]{base::structure}}.}
}
\value{
The function does never return anything, it stops with a
condition of class c("error", "cleanr", "condition").
}
\description{
Throws a condition of class c("error", "cleanr", "condition").
}
\details{
We use this condition as an error dedicated to \pkg{ cleanr.}
}
\keyword{internal}
