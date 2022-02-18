library("ggplot2")
library("plotly")
library("dplyr")


show_global_CO2_emission <- function() {
  co_emissions <- read.csv("../data/annual-co-emissions-by-region.csv", header = TRUE, stringsAsFactors = FALSE)
  year_sum <- co_emissions %>% 
              group_by(Year) %>% 
              mutate(sum_of_year = sum(Annual.CO2.emissions..zero.filled.)) %>% 
              select(Year, sum_of_year) %>% unique()
  
  ggplot(year_sum, aes(as.numeric(Year), sum_of_year, fill = "red")) + 
    geom_area() + 
    labs(x = "year", y = "Global CO2 Emissions", title = "Annual Global CO2 Emission", fill = "CO2 Emission") +
    theme_classic()
}