\name{mh1.12}
\alias{mh1.12}
\title{Function to return the MH1-MH12 hydrologic indicator statistics for a given data frame}
\usage{
mh1.12(qfiletemp)
}
\arguments{
  \item{qfiletemp}{data frame containing a "discharge"
  column containing daily flow values}
}
\value{
mh1.12 data frame containing the mean or median maximum
flows for each month
}
\description{
This function accepts a data frame that contains columns
named "discharge", "year_val" and "month_val" and
calculates the mean (or median-Use Preference option)
maximum flows for each month across all years. Compute the
maximum daily flow for each month over the entire flow
record. For example, MH1 is the mean of the maximums of all
January flow values over the entire record (cubic feet per
second-temporal).
}
\examples{
qfiletempf<-sampleData
mh1.12(qfiletempf)
}

