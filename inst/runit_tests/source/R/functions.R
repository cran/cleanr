failing_function <- function(x, clean = FALSE) {
    y <- c(x, x)  # add some comment that makes the line toooooooooooooooooooooooo wide
    # this is a comment only
    if (istrue(clean)) {
        if (istrue(clean)) {
            if (istrue(clean)) {
                if (istrue(clean)) {
                    message("This is nested")
                }
            }
        }
    }
}

passing_function <- function(x, clean = FALSE) {
    y <- c(x, x)
    # this is a comment only
    if (istrue(clean)) {
        if (istrue(clean)) {
            message("This is nested")
        }
    }
    return(TRUE)
}
