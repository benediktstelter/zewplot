% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zew_plotstyle().R
\name{zew_plotstyle}
\alias{zew_plotstyle}
\title{Use zew style for plots}
\usage{
zew_plotstyle()
}
\description{
This function implements the zew plottheme, which creates a fancy and uniform look.
}
\examples{
line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
geom_line(colour = "#007f7f", size = 1) +
geom_hline(yintercept = 0, size = 1, colour="#333333") +
zew_plotstyle()
}
\keyword{zew_plotstyle}
