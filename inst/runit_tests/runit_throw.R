test_exception <- function() {
    RUnit::checkException(cleanr:::throw("Hello, error!"))
}
