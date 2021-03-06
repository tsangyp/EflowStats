\name{ra3}
\alias{ra3}
\title{Function to return the RA3 hydrologic indicator statistic for a given data frame}
\usage{
ra3(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
ra3 numeric containing RA3 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates RA3; Fall rate. Compute
the change in flow for days in which the change is negative
for the entire flow record. RA3 is the mean (or median-Use
Preference option) of these values (cubic feet per
second/day-temporal).
}
\examples{
qfiletempf<-sampleData
ra3(qfiletempf)
}

