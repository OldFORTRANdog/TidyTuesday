#' Tidy Tuesday, 4/2/2019
#' 
#' Dave Eslinger, 4/5/2019
#' 
#' GitHub: https://github.com/rfordatascience/tidytuesday/tree/master/data/2019/2019-04-02

library(tidyverse)

#' Get data
bike_traffic <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-04-02/bike_traffic.csv")
str(bike_traffic)
bike_traffic

bike_traffic$bike_count <- as.double(bike_traffic$bike_count)
bike_traffic$ped_count <- as.double(bike_traffic$ped_count)
bike_traffic$date <- as.date(bike_traffic$bike_count)
bike_traffic$direction <- as.factor(bike_traffic$direction)

bike_traffic %>%
  select(crossing) %>%
  unique()
  filter(crossing == "Broadway Cycle Track North Of E Union St") %>%
  table(as.factor(direction))# %>%
  count()
