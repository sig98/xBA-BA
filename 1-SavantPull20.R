#This script to pull Baseball Savant data was written by Robert Frey, his video on how to do this is here: https://www.youtube.com/watch?v=swJr4u-HYr0&t=400s
install.packages('devtools')
library(devtools)
install_github("BillPetti/baseballr")

install.packages('tidyverse')
library(tidyverse)


date722728 = baseballr::scrape_statcast_savant(start_date = '2020-07-22',
                                               end_date = '2020-07-28', player_type = 'batter')

date729804 = baseballr::scrape_statcast_savant(start_date = '2020-07-29',
                                               end_date = '2020-08-04', player_type = 'batter')

date805811 = baseballr::scrape_statcast_savant(start_date = '2020-08-05',
                                               end_date = '2020-08-11', player_type = 'batter')

date812818 = baseballr::scrape_statcast_savant(start_date = '2020-08-12',
                                               end_date = '2020-08-18', player_type = 'batter')

date819825 = baseballr::scrape_statcast_savant(start_date = '2020-08-19',
                                               end_date = '2020-08-25', player_type = 'batter')

date826901 = baseballr::scrape_statcast_savant(start_date = '2020-08-26',
                                               end_date = '2020-09-01', player_type = 'batter')

date902908 = baseballr::scrape_statcast_savant(start_date = '2020-09-02',
                                               end_date = '2020-09-08', player_type = 'batter')

date909915 = baseballr::scrape_statcast_savant(start_date = '2020-09-09',
                                               end_date = '2020-09-15', player_type = 'batter')

date916922 = baseballr::scrape_statcast_savant(start_date = '2020-09-16',
                                               end_date = '2020-09-22', player_type = 'batter')

date923929 = baseballr::scrape_statcast_savant(start_date = '2020-09-23',
                                               end_date = '2020-09-29', player_type = 'batter')

#combine all data into one data frame
SavantData20 = rbind( date722728, date729804, date805811, date812818,
                     date819825, date826901, date902908, date909915, date916922,
                     date923929)
SavantTest = SavantData20[sample(nrow(SavantData20),10),]

write.csv(SavantData20, "SavantHittingData20.csv", row.names = F)
