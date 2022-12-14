% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/surv_pv_cst.R
\name{surv_pv_cst.tbl_effort}
\alias{surv_pv_cst.tbl_effort}
\title{Get Coastal harbor seal data: tbl_effort}
\usage{
surv_pv_cst.tbl_effort(con)
}
\arguments{
\item{con}{A connection string to the PEP PostgreSQL database}
}
\value{
A sp object containing all records in the surv_pv_cst.tbl_effort table.
}
\description{
Return all records from surv_pv_cst.tbl_effort as an sp object and processed to provide look-up values (instead of codes) and date/times in GMT
}
\details{
This function returns all effort records from 2004 to present.

The fields in this table are as follows:
\itemize{
  \item id - unique integer identifer for each record
  \item trackid - unique identifier for each flight
  \item survey_date - date of survey (in GMT)
  \item photographer - initials of the person who took photos during the survey
  \item polyid - unique alpha-numeric identifier for each survey unit
  \item effort_type - designates the type of effort under which the survey unit was flown
  \item effort_comments - any additional comments regarding survey effort in the survey unit
  \item num_disturbed - number of harbor seals disturbed during the survey effort
  \item ssl_disturbed - number of Steller sea lions disturbed during the survey effort (recorded starting in 2022)
  \item track_rep - the survey repetition number for the survey unit (1 if the first pass, 2 if the second pass, etc.)
  \item survey_dt - the survey date/time (in GMT) assigned to the survey unit based on href{https://github.com/StacieKozHardy/CoastalPv_DataManagement/blob/main/CoastalPv_04b_CalculateSurveyDTinEffort.R}{this code}
  \item survey_dt_source - designates how the survey date/time was generated
  \item tide_height - the tidal height based on the survey_dt and the tidal station assigned to that survey unit; calculated using href{https://github.com/StacieKozHardy/CoastalPv_DataManagement/blob/main/CoastalPv_04c_CalculateTideCovariates.R}{this code}
  \item nearest_high_dt - the date/time of the nearest high tide to the survey
  \item nearest_high_height - the tidal height of the nearest high tide to the survey
  \item nearest_low_dt - the date/time of the nearest low tide to the survey
  \item nearest_high_height - the tidal height of the nearest low tide to the survey
}

The data in this table relate to other coastal harbor seal survey data based on the following fields:
\itemize{
  \item trackid, track_rep
  \item polyid
}
}
\examples{
# Connect to PEP database
con <- pep_connect()

# Get data and do a lot of cool stuff here
data <- surv_pv_cst.tbl_effort(con)

# When you're done, disconnect from the database
pep_disconnect(con)
}
