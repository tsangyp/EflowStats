\name{ObservedStatsOther}
\alias{ObservedStatsOther}
\title{Function to return all flow statistics for an outside daily discharge data set}
\usage{
ObservedStatsOther(daily_data, drain_area, site_id, stats)
}
\arguments{
  \item{daily_data}{data frame containing datetime and
  discharge}

  \item{drain_area}{value of drainage area for station}

  \item{site_id}{string containing site identifier}

  \item{stats}{string containing desired groups of
  statistics}
}
\value{
statsout data frame containing requested statistics for
each station
}
\description{
This function accepts a data frame of outside discharge
data (datetime in format 'YYYY-MM-DD') and list of desired
statistic groups and returns a data frame containing
requested statistics
}
\examples{
qfiletempf<-dailyData
drain_area<-54
site_id <- "Test site"
stats="magnifSeven,magStat,flowStat,durStat,timStat,rateStat,otherStat"
ObservedStatsOther(qfiletempf,drain_area,site_id,stats)
}

