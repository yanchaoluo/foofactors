% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detect_factor_be_character.R
\name{detect_factor_be_character}
\alias{detect_factor_be_character}
\title{Detect factors that should be character or not?}
\usage{
detect_factor_be_character(x)
}
\arguments{
\item{x}{factor}
}
\value{
if the number of unique values does not equal to the length, and \code{FALSE} otherwise.
}
\description{
Detect factors that should be character or not?
}
\examples{
factor1 <- factor(c("1", "2", "3"))
factor2 <- factor(c("apple", "pear", "banana"))

# This is a character:
detect_factor_be_character(factor1)

# This is a character
detect_factor_be_character(factor2)

}
