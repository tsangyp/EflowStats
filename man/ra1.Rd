\name{ra1}
\alias{ra1}
\title{Function to return the RA1 hydrologic indicator statistic for a given data frame}
\usage{
ra1(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
ra1 numeric containing RA1 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates RA1; Rise rate. Compute
the change in flow for days in which the change is positive
for the entire flow record. RA1 is the mean (or median-Use
Preference option) of these values (cubic feet per
second/day-temporal).
}
\examples{
qfiletempf<-sampleData
ra1(qfiletempf)
}

