#' Function to return the MA12-23 hydrologic indicator statistics for a given data frame
#' 
#' This function accepts a data frame that contains columns named "discharge" and "month_val" and 
#' calculates the means (or medians - use preference option) of monthly flow values. Compute the means 
#' for each month over the entire record. For example, MA12 is the mean of all January flow values over the 
#' entire record (cubic feet per second - temporal).
#' 
#' @param qfiletempf data frame containing a "discharge" column containing daily flow values
#' @param pref string containing a "mean" or "median" preference
#' @return ma12.23 data frame containing the mean or medians for each month
#' @export
#' @examples
#' qfiletempf<-sampleData
#' ma12.23(qfiletempf)
#' ma12.23(qfiletempf,pref="median")
ma12.23 <- function(qfiletempf, pref = "mean") {
  if (pref == "median") {
    medmon <- aggregate(qfiletempf$discharge, list(qfiletempf$month_val), 
                        median, na.rm=TRUE)
    ma12.23 <- data.frame(round(medmon[2],digits=2))
  }
  else {
    meanmon <- aggregate(qfiletempf$discharge, list(qfiletempf$month_val), 
                         mean, na.rm=TRUE)
    ma12.23 <- data.frame(round(meanmon[2],digits=2))
  }
  return(ma12.23)
}