#### Preamble ####
# Purpose: Tests to verify that the simulated data is what we wanted.
# Author: Melissa Xiao
# Date: 19 September 2024
# Contact: melissa.xiao@mail.utoronto.ca
# License: University of Toronto

#### Workspace setup ####
library(tidyverse)

#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))
