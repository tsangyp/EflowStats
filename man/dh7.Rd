\name{dh7}
\alias{dh7}
\title{Function to return the DH7 hydrologic indicator statistic for a given data frame}
\usage{
dh7(qfiletempf)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
dh7 numeric containing DH7 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates DH7; Variability of annual
maximum of 3-day moving average flows. Compute the standard
deviation for the maximum 3-day moving averages. DH7 is 100
times the standard deviation divided by the mean
(percent-spatial).
}
\examples{
qfiletempf<-sampleData
dh7(qfiletempf)
}

