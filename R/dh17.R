#' Function to return the DH17 hydrologic indicator statistic for a given data frame
#' 
#' This function accepts a data frame that contains a column named "discharge" and calculates 
#' DH17; High flow duration. Compute the average duration of flow events with flows above a threshold equal to 
#' the median flow value for the entire flow record. DH17 is the average (or median-Use Preference option) duration 
#' of the events (days-temporal).
#' 
#' @param qfiletempf data frame containing a "discharge" column containing daily flow values
#' @return dh17 numeric containing DH17 for the given data frame
#' @export
#' @examples
#' qfiletempf<-sampleData
#' dh17(qfiletempf)
dh17 <- function(qfiletempf) {
  lfcrit <- median(qfiletempf$discharge)
  noyears <- aggregate(qfiletempf$discharge, list(qfiletempf$wy_val), 
                       FUN = median, na.rm=TRUE)
  colnames(noyears) <- c("Year", "momax")
  noyrs <- length(noyears$Year)
  hfdur <- rep(0,noyrs)
  for (i in 1:noyrs) {
    subsetyr <- subset(qfiletempf, as.numeric(qfiletempf$wy_val) == noyears$Year[i])
    flag <- 0
    pdur <- 0
    nevents <- 0
    for (j in 1:nrow(subsetyr)) {
      if (subsetyr$discharge[j]>lfcrit) {
        flag <- flag+1
        nevents <- ifelse(flag==1,nevents+1,nevents)
        pdur <- pdur+1
      } else {flag <- 0}
    }
    if (nevents>0) {hfdur[i]<-pdur/nevents}
  }
  hfdur_pos <- hfdur[hfdur>0]
  if (length(hfdur_pos)>0) {
  dh17 <- round(mean(hfdur_pos),digits=2)
  } else { dh17<-'NA'} 
  return(dh17)
}