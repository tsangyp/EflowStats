\name{th3}
\alias{th3}
\title{Function to return the TH3 hydrologic indicator statistic for a given data frame}
\usage{
th3(qfiletempf, thresh)
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{thresh}{numeric containing 1.67-year flood
  threshold calculated by getPeakThresh}
}
\value{
tl4 numeric containing TH3 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and a threshold value obtained using the
peakdata and getPeakThresh functions and calculates TH3;
Seasonal predictability of nonflooding. Computed as the
maximum proportion of a 365-day year that the flow is less
than the 1.67-year flood threshold and also occurs in all
years. Accumulate nonflood days that span all years. TH3 is
maximum length of those flood-free periods divided by 365
(dimensionless-spatial).
}
\examples{
qfiletempf<-sampleData
th3(qfiletempf, 1158)
}

