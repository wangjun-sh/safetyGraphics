% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detectStandard.R
\name{detectStandard}
\alias{detectStandard}
\title{Detect the data standard used for a data set}
\usage{
detectStandard(data, includeFields = TRUE, domain = "labs")
}
\arguments{
\item{data}{A data frame in which to detect the data standard}

\item{includeFields}{specifies whether to check the data set for field level data in addition to columns.  Default: \code{TRUE}.}

\item{domain}{The data domain for the data set provided.  Default: \code{"labs"}.}
}
\value{
A list containing the matching \code{"standard"} from \code{"standardMetadata"} and a list of  \code{"details"} describing each standard considered.
}
\description{
This function attempts to detect the clinical data standard used in a given R data frame.
}
\details{
This function compares the columns in the provided \code{"data"} with the required columns for a given data standard/domain combination. The function is designed to work with the SDTM and ADaM CDISC(<https://www.cdisc.org/>) standards for clinical trial data by default. Additional standards can be added by modifying the \code{"standardMetadata"} data set included as part of this package. Currently, "labs" is the only domain supported.
}
\examples{
detectStandard(adlbc)[["standard"]] #adam
detectStandard(iris)[["standard"]] #none

\dontrun{
  detectStandard(adlbc,domain="AE") #throws error. AE domain not supported in this release.
}

}
