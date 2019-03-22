[![pipeline status](https://gitlab.com/fvafrCU/cleanr/badges/master/pipeline.svg)](https://gitlab.com/fvafrCU/cleanr/commits/master)    
[![coverage report](https://gitlab.com/fvafrCU/cleanr/badges/master/coverage.svg)](https://gitlab.com/fvafrCU/cleanr/commits/master)
<!-- 
    [![Build Status](https://travis-ci.org/fvafrCU/cleanr.svg?branch=master)](https://travis-ci.org/fvafrCU/cleanr)
    [![Coverage Status](https://codecov.io/github/fvafrCU/cleanr/coverage.svg?branch=master)](https://codecov.io/github/fvafrCU/cleanr?branch=master)
-->
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/cleanr)](https://cran.r-project.org/package=cleanr)
[![RStudio_downloads_monthly](https://cranlogs.r-pkg.org/badges/cleanr)](https://cran.r-project.org/package=cleanr)
[![RStudio_downloads_total](https://cranlogs.r-pkg.org/badges/grand-total/cleanr)](https://cran.r-project.org/package=cleanr)

# cleanr
Check your R code for some of the most common layout flaws.
<!-- README.md is generated from README.Rmd. Please edit that file -->



# cleanr
## Introduction
Please read the
[vignette](https://CRAN.R-project.org/package=cleanr/vignettes/cleanr_Introduction.html).

Or, after installation, the help page:

```r
help("cleanr-package", package = "cleanr")
```

```
#> Helps You to Code Cleaner
#> 
#> Description:
#> 
#>      Check your R code for some of the most common layout flaws.
#> 
#> Details:
#> 
#>      Many tried to teach us how to write code less dreadful, be it
#>      implicitly as B. W. Kernighan and D. M. Ritchie in The C
#>      Programming Language did, be it explicitly as R.C. Martin in Clean
#>      Code: A Handbook of Agile Software Craftsmanship did.
#> 
#>      So we should check our code for files too long or wide, functions
#>      with too many lines, too wide lines, too many arguments or too
#>      many levels of nesting.
#> 
#> Note:
#> 
#>      This is not a static code analyzer like pylint or the like. If
#>      you're looking for a static code analyzer, check out lintr (<URL:
#>      https://cran.r-project.org/package=lintr> or <URL:
#>      https://github.com/jimhester/lintr>).
#> 
#> See Also:
#> 
#>      Packages 'codetools' (<URL:
#>      https://cran.r-project.org/package=codetools>), 'formatR' (<URL:
#>      https://cran.r-project.org/package=formatR>) and 'lintr' (<URL:
#>      https://cran.r-project.org/package=lintr>).
```

## Installation


```r
if (! require("remotes")) install.packages("remotes")
remotes::install_gitlab("fvafrCU/cleanr")
```


