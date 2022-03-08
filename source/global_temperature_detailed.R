library("shiny")
library("ggplot2")
library("dplyr")
library("stringr")

data = read.csv("../data/gloabl_temp_archive/GlobalLandTemperaturesByCountry.csv")

country_select <- unique(data$Country)

country_input <- selectInput(
  inputId = "country",
  label = "country of Interest",
  choices = country_select,
  selected = "country",
  multiple = TRUE
)

ui <- fluidPage(
  titlePanel("Country Temperature"),
  country_input,
  plotOutput("countryTemp")
)

server <- function(input, output) {
  
  output$countryTemp <- renderPlot({
    
    data <- data %>% 
      mutate(year = str_sub(dt, 1, 4)) %>% 
      group_by(year, Country) %>% 
      mutate(year_ave = mean(AverageTemperature)) %>%
      select(year, year_ave, Country)
    
    plot_data <- data %>% 
      filter(Country %in% input$country)
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

shinyApp(ui = ui, server = server)