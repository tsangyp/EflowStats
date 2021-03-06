\name{getDrainageArea}
\alias{getDrainageArea}
\title{Function to return the drainage area of a site from the NWISWeb sites web service}
\usage{
getDrainageArea(drain_url)
}
\arguments{
  \item{drain_url}{string containing the url for the
  retrieval}
}
\value{
drain_area a numeric value of the drainage area for a given
site
}
\description{
This function accepts a url parameter that already contains
the desired NWIS site. It returns a drain_area value.
}
\examples{
drainage_url<-"http://waterservices.usgs.gov/nwis/site/?siteOutput=Expanded&site="
sites<-"02177000"
drain_url<-paste(drainage_url,sites,sep="")
getDrainageArea(drain_url)
}

