if (interactive()) pkgload::load_all()
function_file <- system.file("runit_tests", "source", "R", "functions.R",
                             package = "cleanr")
source(function_file)
test_num_arguments <- function() {
    RUnit::checkTrue(cleanr::check_num_arguments(failing_function))
    RUnit::checkException(cleanr::check_num_arguments(failing_function,
                                                      max_num_arguments = 1))
}

test_check_return <- function() {
    RUnit::checkException(cleanr::check_return(failing_function))
    RUnit::checkTrue(cleanr::check_return(failing_function,
                                          check_return = FALSE))
}

test_check_nesting_depth <- function() {
    RUnit::checkException(cleanr::check_nesting_depth(failing_function))
    RUnit::checkTrue(cleanr::check_return(failing_function,
                                          check_return = FALSE))
}

test_num_lines <- function() {
    RUnit::checkException(cleanr::check_num_lines(failing_function,
                                                  max_lines = 9))

    RUnit::checkTrue(cleanr::check_num_lines(failing_function,
                                             max_lines = 10))
}

test_num_lines_of_code <- function() {
    RUnit::checkException(cleanr::check_num_lines_of_code(failing_function,
                                                          max_lines = 9))
    RUnit::checkTrue(cleanr::check_num_lines_of_code(failing_function,
                                                  max_lines = 10))
}

test_line_width <- function() {
    RUnit::checkException(cleanr::check_line_width(failing_function,
                                                          max_line_width = 9))
    RUnit::checkTrue(cleanr::check_line_width(failing_function,
                                                  max_line_width = 100))
}

test_file_width <- function() {
    RUnit::checkException(cleanr::check_file_width(function_file,
                                                          max_file_width = 9))
    RUnit::checkTrue(cleanr::check_file_width(function_file,
                                                  max_file_width = 100))
}

test_file_length <- function() {
    RUnit::checkException(cleanr::check_file_length(function_file,
                                                          max_file_length = 9))
    RUnit::checkTrue(cleanr::check_file_length(function_file,
                                                  max_file_length = 100))
}
