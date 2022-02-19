library("ggplot2")
library("dplyr")
library("stringr")


show_global_temp <- function() {
  global_temp <- read.csv("../data/gloabl_temp_archive/GlobalTemperatures.csv", header = TRUE, stringsAsFactors = FALSE)
  
  
  year_average_temp <- global_temp %>% 
                       filter(dt >= "1754-01-01") %>% 
                       mutate(year = str_sub(dt, 1, 4)) %>% 
                       group_by(year) %>% 
                       mutate(year_land_ave = mean(LandAverageTemperature)) %>%
                       mutate(year_land_ocean_ave = mean(LandAndOceanAverageTemperature)) %>%
                       select(year, year_land_ave, year_land_ocean_ave) %>% unique()
  
  ggplot() + 
    geom_point(data = year_average_temp, aes(x = as.numeric(year), y = year_land_ave, col="land average temperature")) + 
    geom_point(data = year_average_temp, aes(x = as.numeric(year), y = year_land_ocean_ave, col="land and ocean average temperature")) +
    geom_smooth(data = year_average_temp, aes(x = as.numeric(year), y = year_land_ave)) +
    geom_smooth(data = year_average_temp, aes(x = as.numeric(year), y = year_land_ocean_ave)) +
    labs(x = "Year", y = "Year Average Temperature(Celsius)", title = "Global Land Average Temperature", color = "range") + 
    theme_classic()
} 
