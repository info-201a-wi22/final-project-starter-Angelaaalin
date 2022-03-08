# Read data & Library
library("shiny")
library("dplyr")
library("ggplot2")
library("plotly")
library("stringr")
source("../source/Global_Temperature_Overview.R")
#Page1
co2 <- read.csv("../data/annual-co-emissions-by-region.csv", header = TRUE,
                stringsAsFactors = FALSE)
co2 <- co2 %>% 
  filter( Entity %in% c("World", "Asia", "Europe", 
                        "Africa","South America", 
                        "North America","Oceania"))

#Page2
globaltemp <- read.csv("../data/gloabl_temp_archive/GlobalLandTemperaturesByCountry.csv",
                       header = TRUE, stringsAsFactors = FALSE)
globaltemp7 <- globaltemp %>% 
  filter(Country %in% c("United States","Canada","China","Japan", 
                         "Australia","France", "Brazil")) %>% 
  select(-AverageTemperatureUncertainty)
as.Date(globaltemp7$dt) 
globaltemp7 <- globaltemp7 %>% 
  filter(str_detect(globaltemp7$dt, "01-01") == TRUE) %>% 
  filter( dt >= "1900-01-01")

#Page3
df <- read.csv("../data/gloabl_temp_archive/GlobalLandTemperaturesByState.csv",
               header = TRUE, stringsAsFactors = FALSE)
temp_state <- df %>%
  filter(State %in% c("Washington", "California", "New York", "Texas",
                      "Florida", "Pennsylvania", "Virginia", "Massachusetts",
                      "Ohio", "Illinois")) %>%
  select(-Country) %>%
  select(-AverageTemperatureUncertainty) %>%
  filter(dt >= "2000-01-01")


server <- function(input,output){
#into
  output$intro_image <- renderPlot(show_global_temp())
#plot1 
  output$plot1 <- renderPlotly({
    co2 <- co2 %>% 
      filter( Year >= input$year[1], 
              Year <= input$year[2])
    plot1 <- ggplot(data = co2)+
      geom_point(mapping = aes(x = Year, 
                               y = Annual.CO2.emissions..zero.filled.,
                               color = Entity))+
      labs( x = "Year", y = "Emission", color = "Region")
  })

#plot2
 output$plot2 <- renderPlotly({
   globaltemp7 <- globaltemp7 %>% 
     filter(Country == input$country)
   plot2 <- ggplot(data = globaltemp7)+
     geom_point(mapping = aes(x = dt,
                            y = AverageTemperature))+
     labs( x = "Month", y = "Average Temperature")
 })
 
#plot3
 output$plot3 <- renderPlotly({
   temp_state_plot <- temp_state %>%
     filter(State == input$State)
   plot3 <- ggplot(data = temp_state_plot) +
     geom_point(mapping = aes(x = dt,
                              y = AverageTemperature)) +
     labs(x = "Date", y = "Average Temperature") +
     theme(axis.text.x = element_text(angle = 90))
 })

#country temperature
 output$countryTemp <- renderPlot({
   
   data <- data %>% 
     mutate(year = str_sub(dt, 1, 4)) %>% 
     group_by(year, Country) %>% 
     mutate(year_ave = mean(AverageTemperature)) %>%
     select(year, year_ave, Country)
   
   plot_data <- data %>% 
     filter(Country %in% input$temp_country)
   p <- ggplot(
     data = plot_data,
     mapping = aes(x = as.numeric(year), y = year_ave, color = Country)
   ) +
     geom_point() +
     geom_smooth() +
     labs(x = "year", y = "Temperature (celsius)", color = "Country") + theme_classic()
   p
 })
}


