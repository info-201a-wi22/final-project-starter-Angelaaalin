# Summary Information Script #
#load packages#
install.packages("tidyverse")
library("tidyverse")
install.packages("dplyr")
library("dplyr")

#Read data#
global_temp <- read.csv(file = "https://media.githubusercontent.com/media/info-201a-wi22/final-project-starter-Angelaaalin/main/data/gloabl_temp_archive/GlobalTemperatures.csv", header = TRUE, stringsAsFactors = FALSE)
temp_by_state <- read.csv(file = "https://media.githubusercontent.com/media/info-201a-wi22/final-project-starter-Angelaaalin/main/data/gloabl_temp_archive/GlobalLandTemperaturesByState.csv", header = TRUE, stringsAsFactors = FALSE)
temp_by_country <- read.csv("https://media.githubusercontent.com/media/info-201a-wi22/final-project-starter-Angelaaalin/main/data/gloabl_temp_archive/GlobalLandTemperaturesByCountry.csv", header = TRUE, stringsAsFactors = FALSE)
temp_by_city <- read.csv(file = "https://media.githubusercontent.com/media/info-201a-wi22/final-project-starter-Angelaaalin/main/data/gloabl_temp_archive/GlobalLandTemperaturesByMajorCity.csv", header = TRUE, stringsAsFactors = FALSE)
c_emission <- read.csv(file = "https://media.githubusercontent.com/media/info-201a-wi22/final-project-starter-Angelaaalin/main/data/annual-co-emissions-by-region.csv", header = TRUE, stringsAsFactors = FALSE)
View(temp_by_state)

#Change of global average land temperature from 18th century to 19th century#
temp_18 <- global_temp %>% 
  filter(dt >="1700-01-01",dt <= "1799-12-01") %>%
  pull(LandAverageTemperature)
ave_land_temp_18 <- mean(temp_18, na.rm = TRUE) 
  
temp_19 <- global_temp %>% 
  filter(dt >="1800-01-01",dt <= "1899-12-01") %>%
  pull(LandAverageTemperature)
ave_land_temp_19 <- mean(temp_19, na.rm = TRUE) 

temp_18_19 <- ave_land_temp_19 - ave_land_temp_18

#Change of global average land temperature from 19th century to 20th century#
temp_20 <- global_temp %>% 
  filter(dt >="1900-01-01",dt <= "1999-12-01") %>%
  pull(LandAverageTemperature)
ave_land_temp_20 <- mean(temp_20, na.rm = TRUE) 

temp_19_20 <- ave_land_temp_20 - ave_land_temp_19

#Change of global average land temperature from 20th century to 21st century#
temp_21 <- global_temp %>% 
  filter(dt >="2000-01-01",dt <= "2099-12-01") %>%
  pull(LandAverageTemperature)
ave_land_temp_21<- mean(temp_21, na.rm = TRUE) 
temp_20_21 <- ave_land_temp_21 - ave_land_temp_20

#Average temperature of countries after 2000#
temp_after_2000 <- temp_by_country %>%
  filter(dt >= "2000-01-01") %>%
  group_by(Country) %>%
  summarise(ave_temp = mean(AverageTemperature, na.rm = TRUE))
ave_temp_2000 <- mean(temp_after_2000$ave_temp, na.rm = TRUE)

#Entity with highest average annual CO2 emission#
max_CO2 <- average_CO2 %>%
  filter(Entity != "World" ) %>%
  filter(ave_CO2_emission == max(ave_CO2_emission, na.rm = TRUE)) %>%
  pull(Entity)

#City with the highest average temperature in the most recent year#
recent_year <- temp_by_city %>% 
  group_by(City) %>%
  top_n(dt, n = 9) 
highest_temp_city <- recent_year %>%
  group_by(City) %>%
  summarise(ave_temp = mean(AverageTemperature, na.rm = TRUE)) %>%
  filter(ave_temp == max(ave_temp)) %>%
  pull(City)

#State with highest average temperature in 21th century#
temp_by_state$location<- paste0(temp_by_state$State, sep = ", ",  temp_by_state$Country)
highest_temp_state <- temp_by_state %>%
  filter(dt >= "2000-01-01") %>%
  group_by(location) %>%
  summarise(ave_temp = mean(AverageTemperature, na.rm = TRUE)) %>%
  filter(ave_temp == max(ave_temp)) %>%
  pull(location)

#Summary Information List#
summary_info <- list(
  "Global average temperature changes from 18th century to 19th century" = temp_18_19,
  "Global average temperature changes from 19th century to 20th century" = temp_19_20,
  "Global average temperature changes from 20th century to 21st century" = temp_20_21,
  "Average temperature of counties after 2000" = ave_temp_2000,
  "Entity with highest CO2 emission" = max_CO2, 
  "City with highest average temperature in the mosr recent year" = highest_temp_city, 
  "State with highest average temperature in 21th century" = highest_temp_state)
print(summary_info)



