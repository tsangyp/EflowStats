#' Function to return the l7Q2 value for a given data series
#' 
#' This function accepts a data frame containing daily data and returns the l7Q2 value
#' 
#' @param qfiletempf data frame containing value data for one of the chosen timeseries
#' @return l7Q2 l7Q2 value for the given data frame
#' @export
#' @examples
#' qfiletempf<-sampleData
#' l7Q2(qfiletempf)
l7Q2 <- function(qfiletempf) {
  day7mean <- rollmean(qfiletempf$discharge, 7, align = "right", 
                       na.pad = TRUE)
  day7rollingavg <- data.frame(qfiletempf, day7mean)
  rollingavgs7day <- subset(day7rollingavg, day7rollingavg$day7mean != 
                              "NA")
  min7daybyyear <- aggregate(rollingavgs7day$day7mean, 
                              list(rollingavgs7day$wy_val), min, na.rm=TRUE)
  sort_7day<-sort(min7daybyyear$x)
  rank_50<-floor(findrank(length(sort_7day),0.50))
  if (rank_50 > 0) { 
    l7Q2<-round(sort_7day[rank_50],digits=2) 
  } else { 
    l7Q2<-NaN 
  }
  return(l7Q2)
}