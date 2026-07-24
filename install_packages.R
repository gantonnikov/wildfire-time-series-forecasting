required_packages <- c(
  "dplyr",
  "fable",
  "fable.prophet",
  "feasts",
  "forecast",
  "fpp3",
  "ggplot2",
  "jsonlite",
  "knitr",
  "lubridate",
  "rmarkdown",
  "seasonal",
  "seasonalview",
  "tidyverse",
  "tsibble",
  "x13binary"
)

missing_packages <- setdiff(required_packages, rownames(installed.packages()))

if (length(missing_packages) > 0) {
  install.packages(missing_packages, repos = "https://cloud.r-project.org")
} else {
  message("All required packages are already installed.")
}
