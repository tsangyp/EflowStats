\name{dh12}
\alias{dh12}
\title{Function to return the DH12 hydrologic indicator statistic for a given data frame}
\usage{
dh12(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
dh12 numeric containing DH12 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates DH12; Annual maximum of
7-day moving average flows divided by the median for the
entire record. Compute the maximum daily average flow for
each year. DH12 is the mean of these values divided by the
median for the entire record (dimensionless-spatial).
}
\examples{
qfiletempf<-sampleData
dh12(qfiletempf)
}

