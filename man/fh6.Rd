\name{fh6}
\alias{fh6}
\title{Function to return the FH6 hydrologic indicator statistic for a given data frame}
\usage{
fh6(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
fh6 numeric value of FH6 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates FH6; Flood frequency.
Compute the average number of flow events with flows above
a threshold equal to three times the median flow value for
the entire flow record. FH6 is the average (or median-Use
Preference option) number of events (number of
events/year-temporal).
}
\examples{
qfiletempf<-sampleData
fh6(qfiletempf)
}

