\name{NEWS}
\title{NEWS}

\section{Changes in version 1.4.0}{
\itemize{
\item Omitted examples in documentation of unexported functions as requested by
CRAN.
\item Bumped version due to fritools back on CRAN.
}
}

\section{Changes in version 1.3.5}{
\itemize{
\item Fixed broken internal documentation in \code{get_function_body.Rd}.
}
}

\section{Changes in version 1.3.4}{
\itemize{
\item Added a linebreak in \code{inst/runit_tests/source/R_s4/AllGenerics.R}, which
mysteriously has line width greater than 80 in tests on CRAN.
}
}

\section{Changes in version 1.3.3}{
\itemize{
\item Now explicitly importing from \code{fritools} as some flavours of CRAN don't seem
to recognize \code{a <- fritools::a} as an import.
}
}

\section{Changes in version 1.3.2}{
\itemize{
\item Now importing package \code{fritools}.
}
}

\section{Changes in version 1.3.1}{
\itemize{
\item Using a rasciidoc vignette now.
}
}

\section{Changes in version 1.3.0}{
\itemize{
\item Fixed Issue #1: RUnit test now no longer write results to disk on their own.
\item Tagged documentation for \code{is_not_false()} and \code{load_internal_functions()} as
internal.
}
}

\section{Changes in version 1.2.0}{
\itemize{
\item Added a \code{NEWS.md} file to track changes to the package.
\item Changed the maintainer's email to \href{mailto:fvafrcu@mailbox.org}{fvafrcu@mailbox.org}.
\item Added \code{check_package()}.
\item Changed \code{check_file()} to now catch and throw errors caused by trying to source S4 code.
}
}

