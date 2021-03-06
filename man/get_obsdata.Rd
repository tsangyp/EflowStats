\name{get_obsdata}
\alias{get_obsdata}
\title{Function to transform data into the format required for calculation of HIT/HAT statistics}
\usage{
get_obsdata(x_obs)
}
\arguments{
  \item{x_obs}{data frame pulled from NWIS webservice}
}
\value{
obs_data data frame of observed data for the chosen
parameters
}
\description{
This function accepts a raw data frame pulled from the NWIS
webservice and returns a data frame of observed data for
use in calculating HIT/HAT statistics
}
\examples{
url<-"http://waterservices.usgs.gov/nwis/dv/?format=waterml,1.1&sites="
sites<-"02177000"
startdate<-"2012-09-01"
enddate<-"2012-10-01"
offering<-'00003'
property<-'00060'
obs_url<-paste(url,sites,'&startDT=',startdate,'&endDT=',enddate,'&statCd=',offering,'&parameterCd=',property,sep='')
x_obs <- getXMLWML1.1Data(obs_url)
get_obsdata(x_obs)
}

