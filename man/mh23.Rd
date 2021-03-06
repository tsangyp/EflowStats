\name{mh23}
\alias{mh23}
\title{Function to return the MH23 hydrologic indicator statistic for a given data frame}
\usage{
mh23(x)
}
\arguments{
  \item{x}{data frame containing a "discharge" column
  containing daily flow values}
}
\value{
mh23 numeric value of MH23 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates MH23, high flow volume.
Compute the average volume for flow events above a
threshold equal to seven times the median flow for the
entire record. MH23 is the average volume divided by the
median flow for the entire record (days-temporal).
}
\examples{
qfiletempf<-sampleData
mh23(qfiletempf)
}

