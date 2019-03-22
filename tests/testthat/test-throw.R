testthat::context("Testing cleanr:::throw()")
testthat::test_that("throw the cleanr exception", {
                        error_message <- "hello, testthat"
                        string <- "hello, testthat"
                        testthat::expect_error(cleanr:::throw(string),
                            error_message)
}
)
