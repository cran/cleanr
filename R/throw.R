#' Throw a Condition
#'
#' Throws a condition of class c("error", "cleanr", "condition").
#'
#' We use this condition as an error dedicated to \pkg{ cleanr.}
#'
#' @param message_string The message to be thrown.
#' @param system_call The call to be thrown.
#' @param ... Arguments to be passed to
#' \code{\link[base:structure]{base::structure}}.
#' @return The function does never return anything, it stops with a
#' condition of class c("error", "cleanr", "condition").
#' @keywords internal
# CRAN complains about examples in internal documentation of unexported function
# #' @examples
# #' tryCatch(cleanr:::throw("Hello error!"), cleanr = function(e) return(e))
throw <- function(message_string, system_call = sys.call(-1), ...) {
    condition <- structure(class = c("error", "cleanr", "condition"),
                           list(message = message_string, call = system_call),
                           ...)
    stop(condition)
}
