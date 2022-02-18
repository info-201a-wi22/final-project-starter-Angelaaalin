library("ggplot2")
library("dplyr")
library("stringr")


show_global_temp <- function() {
  global_temp <- read.csv("../data/gloabl_temp_archive/GlobalTemperatures.csv", header = TRUE, stringsAsFactors = FALSE)
  
  
  year_average_temp <- global_temp %>% 
                       filter(dt >= "1754-01-01") %>% 
                       mutate(year = str_sub(dt, 1, 4)) %>% 
                       group_by(year) %>% 
                       mutate(year_ave = mean(LandAverageTemperature)) %>% 
                       select(year, year_ave) %>% unique()
  
  ggplot(year_average_temp, aes(as.numeric(year), year_ave)) + geom_point() + 
    labs(x = "Year", y = "Year Average Temperature(Celsius)", title = "Global Average Temperature") + 
    theme_classic()
} 
