if (interactive()) pkgload::load_all()
function_file <- system.file("runit_tests", "source", "R", "functions.R",
                             package = "cleanr")
source(function_file)

test_check_function_layout <- function() {
    RUnit::checkTrue(check_function_layout(passing_function))
    RUnit::checkException(check_function_layout(failing_function,
                                                max_line_width = 10))
}

test_check_file_layout <- function() {
    RUnit::checkTrue(check_file_layout(function_file, max_file_width = 100))
    RUnit::checkException(check_file_layout(function_file, max_file_width = 10))
}

test_check_functions_in_file <- function() {
    RUnit::checkTrue(check_functions_in_file(function_file,
                                             max_nesting_depth = 4,
                                             max_line_width = 100,
                                             check_return = FALSE))
    RUnit::checkException(check_functions_in_file(function_file))
}

test_check_file <- function() {
    RUnit::checkTrue(check_file(function_file,
                                             max_nesting_depth = 4,
                                             max_line_width = 100,
                                             max_file_width = 100,
                                             check_return = FALSE))
    RUnit::checkException(check_file(function_file))
    RUnit::checkException(check_file(function_file, silly_arguemnt = "FIFI"))
}

test_check_directory <- function() {
    RUnit::checkTrue(check_directory(system.file("runit_tests", "source", "R",
                                                 package = "cleanr"),
                                     max_nesting_depth = 4,
                                     max_line_width = 100,
                                     max_file_width = 100,
                                     check_return = FALSE))
    RUnit::checkException(check_directory(system.file("runit_tests", "source",
                                                      "R", package = "cleanr")))
}
