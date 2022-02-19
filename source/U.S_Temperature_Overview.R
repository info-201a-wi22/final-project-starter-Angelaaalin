# Load packages
library("ggplot2")
library("dplyr")
library("mapproj")

# Read data
temp_by_state <- read.csv(file = "../data/gloabl_temp_archive/GlobalLandTemperaturesByState.csv", header = TRUE, stringsAsFactors = FALSE)
View(temp_by_state)

# Select the latest data of average temperature in the U.S
new_data <- temp_by_state %>%
  filter(dt == "2013-08-01") %>%
  mutate(State = tolower(State))

# Join temperature data to the U.S shapefile
state_shape <- map_data("state") %>%
  rename(State = region) %>%
  left_join(new_data, by = "State")
  
# Draw the map setting the 'fill' of the each state using its average temperature
ggplot(state_shape) +
  geom_polygon(
    mapping = aes(x = long, y = lat, group = group, fill = AverageTemperature),
    color = "white",
    size = .1
  ) +
  coord_map() +
  scale_fill_continuous(low = "#132B43", high = "Red") +
  labs(fill = "Average Temperature") 
