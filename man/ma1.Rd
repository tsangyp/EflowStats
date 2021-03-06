\name{ma1}
\alias{ma1}
\title{Function to return the MA1 hydrologic indicator statistic for a given data frame}
\usage{
ma1(x)
}
\arguments{
  \item{x}{data frame containing a "discharge" column
  containing daily flow values}
}
\value{
ma1 numeric value of the mean daily flow for the given data
frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates the mean of the daily flow
values for the entire record (cubic feet per second)
}
\examples{
qfiletempf<-sampleData
ma1(qfiletempf)
}

