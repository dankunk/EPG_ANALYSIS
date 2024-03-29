% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_ana.R
\name{read_ana}
\alias{read_ana}
\title{Read a single '.ANA' file.}
\usage{
read_ana(
  filepath,
  waveform_labels = NULL,
  validate = TRUE,
  filename_shiny = NULL
)
}
\arguments{
\item{filepath}{String; path to .ANA file.}

\item{waveform_labels}{Named vector; values are waveform numbers and names are waveform labels.}

\item{validate}{Logical; If TRUE (defualt), performs data validation.}

\item{filename_shiny}{String; Special argument only used in shiny app. Leave as default (NULL).}
}
\value{
List of 2 dataframes: 'data' with the labelled data, and 'errors' with any validation errors (NULL if no errors).
}
\description{
Read a single '.ANA' file.
}
\examples{
waveform_labels <- c(
"C" = 2,
"E1e" = 3,
"E1" = 4,
"E2" = 5,
"F" = 6,
"G" = 7,
"pd-S" = 8,
"pd-S-II-2" = 9,
"pd-S-II-3" = 10,
"pd-L" = 11,
"pd-L-II-2" = 13,
"pd-L-II-3" = 14,
"end" = 12)

df <- read_ana(filepath="/Users/c/Documents/EPG Project/Info for Clay/Grids/1-15-2018 day-ch7_VJN.ANA",
 waveform_labels=waveform_labels)

}
