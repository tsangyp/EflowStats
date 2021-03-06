\name{dl5}
\alias{dl5}
\title{Function to return the DL5 hydrologic indicator statistic for a given data frame}
\usage{
dl5(qfiletempf, pref = "mean")
}
\arguments{
  \item{qfiletempf}{data frame containing a "discharge"
  column containing daily flow values}

  \item{pref}{string containing a "mean" or "median"
  preference}
}
\value{
dl5 numeric containing DL5 for the given data frame
}
\description{
This function accepts a data frame that contains a column
named "discharge" and calculates DL5; Annual minimum of
90-day moving average flow. Compute the minimum of a 90-day
moving average flow for each year. DL5 is the mean (or
median-Use Preference option) of these values (cubic feet
per second-temporal).
}
\examples{
qfiletempf<-sampleData
dl5(qfiletempf)
}

