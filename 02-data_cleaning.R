#### Preamble ####
# Purpose: Cleans the raw Toronto Marriage Licence Statistics data.
# Author: Melissa Xiao
# Date: 19 September 2024
# Contact: melissa.xiao@mail.utoronto.ca
# License: University of Toronto

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

cleaned_data |>
  ggplot(aes(x = date, y = marriage_licenses)) +
  geom_point()


#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")

