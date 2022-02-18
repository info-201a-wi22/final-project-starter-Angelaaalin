library("shiny")
library("ggplot2")
library("dplyr")

data = read.csv("../data/annual-co-emissions-by-region.csv")

region_select <- unique(data$Entity)

region_input <- selectInput(
  inputId = "region",
  label = "Region of Interest",
  choices = region_select,
  selected = "region",
  multiple = TRUE
)

ui <- fluidPage(
  titlePanel("Regional CO2 Emissions"),
  region_input,
  plotOutput("plot")
)

server <- function(input, output) {
  
  output$plot <- renderPlot({
    
    plot_data <- data %>% 
      filter(Entity %in% input$region)
    p <- ggplot(
      data = plot_data,
      mapping = aes(x = as.numeric(Year), y = Annual.CO2.emissions..zero.filled., color = Entity)
    ) +
      geom_line() +
      labs(x = "year", y = "CO2 Emission (tones)", color = "CO2 Emission") + theme_classic()
    p
  })
}

shinyApp(ui = ui, server = server)