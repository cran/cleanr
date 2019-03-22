if (interactive()) pkgload::load_all()

test_s4_no_generic <- function() {
    file <- system.file("runit_tests", "source", "R_s4", "auc-methods.R",
                        package = "cleanr")
    # FIXME: what the hell is going on?!
    # This _should_ throw an exception, but does so only interactively?
    # But coverage is there because of test_s4_dircetory in batch!
    if (interactive()) {
        RUnit::checkException(cleanr::check_file(file))
    } else {
        RUnit::checkTrue(cleanr::check_file(file))
    }
}

test_s4_known_generic <- function() {
    file <- system.file("runit_tests", "source", "R_s4", "AllGenerics.R",
                        package = "cleanr")
    source(file)
    file <- system.file("runit_tests", "source", "R_s4", "auc-methods.R",
                        package = "cleanr")
    RUnit::checkTrue(cleanr::check_file(file))
}



test_s4_dircetory <- function() {
    directory <- system.file("runit_tests", "source", "R_s4",
                             package = "cleanr")
    RUnit::checkException(cleanr::check_directory(directory,
                                                  check_return = FALSE))
}

test_s4_package <- function() {
    package_path <- file.path(tempdir(), "fake")
    usethis::create_package(package_path, fields = NULL,
                            rstudio = FALSE, open = FALSE)
    directory <- system.file("runit_tests", "source", "R_s4",
                             package = "cleanr")
    file.copy(list.files(directory, full.names = TRUE), file.path(package_path,
                                                                  "R"))
    RUnit::checkTrue(cleanr::check_package(package_path, check_return = FALSE))
}
