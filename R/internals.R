#' get the body of a function
#'
#' \code{\link{body}} reformats the code (see \emph{Examples} and
#' \emph{Details}).
#'
#' If we want to check a function as it is coded in a file, we need to get the
#' original thing as coded in the file, no optimized version.
#' In \code{\link{sys.source}} and \code{\link{source}}, keep.source = FALSE
#' seems to use \code{\link{body}}.
#' So we have to do it all over after sourcing with keep.source = TRUE (in
#' \code{\link{check_functions_in_file}}).
#'
#' @param object The function from which to extract the body. \cr Should have
#' been sourced with keep.source = TRUE.
#' @return \code{character(n)} the function body's lines.
#' @keywords internal
# CRAN complains about examples in internal documentation of unexported function
# #' @examples
# #' source(system.file("source", "R", "utils.R", package = "cleanr"))
# #' require(checkmate)
# #' cleanr:::get_function_body(set_cleanr_options)[3:6]
# #' utils::capture.output(body(set_cleanr_options))[4:6]
get_function_body <- function(object) {
    checkmate::checkFunction(object)
    checkmate::checkFunction(object)
    captured_function <- utils::capture.output(object)
    # if the function is not defined in the global environment, the environment
    # will be added to capture.output()
    lines_in_function <- captured_function[! grepl("<environment:\\.*",
                                                   captured_function)]
    # remove the byte code
    lines_in_function <- lines_in_function[! grepl("<bytecode:\\.*",
                                                   lines_in_function)]
    if (!any(grepl("{", lines_in_function, fixed = TRUE))) {
        # treat oneliners
        is_split_onliner <- length(lines_in_function) > 1
        opening_line_num <- 1  + as.numeric(is_split_onliner)
        closing_line_num  <- length(lines_in_function)
    } else {
        opening_line_num <- min(grep("{", lines_in_function, fixed = TRUE))
        closing_line_num <- max(grep("}", lines_in_function, fixed = TRUE))
    }
    opening_brace_ends_line <-
        grepl("\\{\\s*$", lines_in_function[opening_line_num])
    if (opening_brace_ends_line)
        opening_line_num <- opening_line_num + 1
    closing_brace_starts_line <-
        grepl("^\\s*\\}", lines_in_function[closing_line_num])
    if (closing_brace_starts_line)
        closing_line_num <- closing_line_num - 1
    return(lines_in_function[opening_line_num:closing_line_num])
}

#' tidy findings
#'
#' remove TRUE converted to class character from findings.
#'
#' \code{\link{check_directory}}, \code{\link{check_file}},
#' \code{\link{check_functions_in_file}} and
#' \code{\link{check_function_layout}} all collect tryCatch to collect either
#' TRUE for a check passed or a character holding a conditions message. This
#' function deletes the TRUES.
#'
#' @param findings a character vector with possibly some elements reading "TRUE"
#' or a vector of TRUES.
#' @return a character vector without any element reading "TRUE" or NULL.
#' @keywords internal
# CRAN complains about examples in internal documentation of unexported function
# #' @examples
# #' findings <- c("some signal caught", rep("TRUE", 3))
# #' cleanr:::tidy_findings(findings)
tidy_findings <- function(findings) {
    if (is.logical(findings)) {
        ## findings may be all TRUE, so we set them NULL
        conditions <- NULL
    } else {
        ## findings are of class character with TRUE converted to "TRUE", so we
        ## remove these
        conditions <- findings[! findings == "TRUE"]
    }
    return(conditions)
}
