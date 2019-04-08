#' Tidy Tuesday project 2019-04-09
#' Russian Troll tweets
#' https://github.com/fivethirtyeight/russian-troll-tweets
#' 
#' Dave Eslinger, 2019-04-08
#' 

library(tidyverse)
dat1 <- read.csv('data/russian-troll-tweets-master/IRAhandle_tweets_1.csv')
str(dat1)
dat1 %>% 
  group_by(language) %>%
  count() %>%
  hist()
