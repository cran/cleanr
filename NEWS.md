# cleanr 1.3.5

* Fixed broken internal documentation in `get_function_body.Rd`.

# cleanr 1.3.4

* Added a linebreak in `inst/runit_tests/source/R_s4/AllGenerics.R`, which
  mysteriously has line width greater than 80 in tests on CRAN.

# cleanr 1.3.3

* Now explicitly importing from `fritools` as some flavours of CRAN don't seem 
  to recognize `a <- fritools::a` as an import.

# cleanr 1.3.2

* Now importing package `fritools`.

# cleanr 1.3.1

* Using a rasciidoc vignette now.

# cleanr 1.3.0

* Fixed Issue #1: RUnit test now no longer write results to disk on their own.
* Tagged documentation for `is_not_false()` and `load_internal_functions()` as
  internal.

# cleanr 1.2.0

* Added a `NEWS.md` file to track changes to the package.
* Changed the maintainer's email to <fvafrcu@mailbox.org>.
* Added `check_package()`.
* Changed `check_file()` to now catch and throw errors caused by trying to source S4 code.
