#### Preamble ####
# Purpose: Simulates data to identify trends in the number of marriage licenses 
# issued before and after Covid
# Author: Melissa Xiao
# Date: 19 September 2024
# Contact: melissa.xiao@mail.utoronto.ca
# License: University of Toronto
# Pre-requisites: Know where to find Marriage Licence Statistics data

#### Workspace setup ####
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

#### Simulate data ####

data <-
  tibble(
    date =,
    number_of_marriage = rpois
  )

set.seed(123)  

# Generate dates
start_date <- as.Date("2017-12-31")
end_date <- as.Date("2024-12-31")
dates <- seq.Date(start_date, end_date, by = "month")

marriage_licenses <- data.frame(
  Date = dates,
  Number_of_Licences = rpois(length(dates), lambda = 10)
)

head(marriage_licenses)

#### Write csv
write_csv(data, file = "data/raw_data/simulated.csv")




