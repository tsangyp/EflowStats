\name{ra6}
\alias{ra6}
\title{Function to return the RA6 hydrologic indicator statistic for a given data frame}
\usage{
ra6(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
ra6 numeric containing RA6 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates RA6; Change of flow.
Compute the loge of the flows for the entire flow record.
Compute the change in log of flow for days in which the
change is positive for the entire flow record. RA6 is the
median of these values (cubic feet per second-temporal).
}
\examples{
qfiletempf<-sampleData
ra6(qfiletempf)
}

