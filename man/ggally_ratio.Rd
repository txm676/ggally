% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg-plots.R
\name{ggally_ratio}
\alias{ggally_ratio}
\title{Plots a mosaic plot}
\usage{
ggally_ratio(data, mapping = do.call(ggplot2::aes_string,
  as.list(colnames(data)[1:2])), ..., floor = 0, ceiling = NULL)
}
\arguments{
\item{data}{data set using}

\item{mapping}{aesthetics being used. Only x and y will used and both are required}

\item{...}{passed to \code{\link[ggplot2]{geom_tile}(...)}}

\item{floor}{don't display cells smaller than this value}

\item{ceiling}{max value to scale frequencies.  If any frequency is larger than the ceiling, the fill color is displayed darker than other rectangles}
}
\description{
Plots the mosaic plot by using fluctuation.
}
\examples{
data(tips, package = "reshape")
ggally_ratio(tips, ggplot2::aes(sex, day))
ggally_ratio(tips, ggplot2::aes(sex, day)) + ggplot2::coord_equal()
# only plot tiles greater or equal to 20 and scale to a max of 50
ggally_ratio(
  tips, ggplot2::aes(sex, day),
  floor = 20, ceiling = 50
) + ggplot2::theme(aspect.ratio = 4/2)
}
\author{
Barret Schloerke \email{schloerke@gmail.com}
}
\keyword{hplot}
