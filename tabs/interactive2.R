# Interactive Page 2
library("ggplot2")
library("plotly")
library("shiny")

interactive_2 <- tabPanel(
  "Interactive Page 2",
  titlePanel("Temperature Change by Country"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "country",
        label = "Country",
        choices = list("Brazil" = "Brazil",
                       "China"= "China",
                       "France" = "France",
                       "Japan" = "Japan",
                       "Australia" = "Australia",
                       "United States" = "United States",
                       "Canada" = "Canada"),
        selected = "United States"
      )
    ),
    mainPanel(
      titlePanel("Temperature Change by Country"),
      plotlyOutput(outputId = "plot2"),
      p("This graph shows the average temperature in 1 Jan from 1900 to 2013 for 7 different
        countries: Brazil, China, France, Japan, Australia, United States, and Canada.
        By selecting different country, it displays its temperature change over time.") 
    )
  )
)