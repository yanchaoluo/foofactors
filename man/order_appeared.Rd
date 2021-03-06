% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/order_appeared.R
\name{order_appeared}
\alias{order_appeared}
\title{Set levels of a factor to the order appeared in data}
\usage{
order_appeared(x)
}
\arguments{
\item{x}{a vector or a factor}
}
\value{
a factor with levels in the order appeared in x.
This function will only return unique x levels,
}
\description{
Set levels of a factor to the order appeared in data
}
\examples{
order_appeared (c("pear","apple","banana","banana","apple"))
}
