#' Test if an Object is not False
#'
#' See \code{\link[fritools:is_not_false]{fritools::is_not_false}}.
#'
#' @param x The object to be tested.
#' @param null_is_false [boolean(1)]\cr Should NULL be treated as FALSE?
#' @param ... Parameters passed to \code{\link{exists}}. See Details and
#' Examples.
#' @return TRUE if the object is set to something different than FALSE, FALSE
#' otherwise.
#' @keywords internal
#' @export
is_not_false <- fritools::is_not_false

#' Load a Package's Internals
#'
#' See
#' \code{
#' \link[fritools:load_internal_functions]{fritools::load_internal_functions}
#' }.
#'
#' @param package [character(1)]\cr The name of the package as a string.
#' @param ... Arguments passed to \code{\link{ls}}, all.names = TRUE could be a
#' good idea.
#' @seealso \code{\link[codetools:checkUsageEnv]{checkUsageEnv in codetools}}.
#' @return invisible(TRUE)
#' @export
#' @keywords internal
load_internal_functions <- fritools::load_internal_functions
