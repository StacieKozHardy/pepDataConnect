% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surv_pv_cst.R
\name{surv_pv_cst.summ_count_by_image}
\alias{surv_pv_cst.summ_count_by_image}
\title{Get Coastal harbor seal data: summ_count_by_image}
\usage{
surv_pv_cst.summ_count_by_image(con)
}
\arguments{
\item{con}{A connection string to the PEP PostgreSQL database}
}
\value{
A sp object containing all records in the surv_pv_cst.summ_count_by_image table.
}
\description{
Return all records from surv_pv_cst.summ_count_by_image as an sp object and processed to provide date/times in GMT
}
\details{
This function returns all counts for each image that has been counted in the database.

The fields in this table are as follows:
\itemize{
  \item id - unique integer identifer for each record
  \item trackid - unique identifier for each flight
  \item image_name - name of the image
  \item polyid - unique alpha-numeric identifier for each survey unit
  \item non_pup - total number of non-pup harbor seals counted on the image
  \item pup - total number of pup harbor seals counted on the image
  \item aux - total number of harbor seals counted off-frame in the vicinity of that image
  \item total - total number of harbor seals (non-pup, pup and off-frame) counted on the
  \item survey_date - date of survey (in GMT)
  \item track_rep - the survey repetition number for the survey unit (1 if the first pass, 2 if the second pass, etc.)
  \item gps_dt - date/time when the image was taken based on GPS (in GMT)
  \item count_compromised - indicates if there were any issues with the image that resulted in the count at that location being compromised
  \item photog_date_id - initials and date of image photographer
}

The data in this table relate to other coastal harbor seal survey data based on the following fields:
\itemize{
  \item trackid, track_rep
  \item photog_date_id - can match to track_id, as well
  \item image_name
  \item polyid
}
}
\examples{
# Connect to PEP database
con <- pep_connect()

# Get data and do a lot of cool stuff here
data <- surv_pv_cst.summ_count_by_image(con)

# When you're done, disconnect from the database
pep_disconnect(con)
}
