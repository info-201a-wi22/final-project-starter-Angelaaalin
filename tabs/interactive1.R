# Interactive Page 1#
library("ggplot2")
library("plotly")
library("shiny")

interactive_1 <- tabPanel(
  "Interactive Page 1",
  titlePanel("CO2 Change Over Time"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "year",
        label = "Year",
        min = 1750,
        max = 2020,
        value = c(1900, 2000)
      )
    ),
    mainPanel(
      titlePanel("CO2 Emission Over Time"),
      plotlyOutput("plot1"),
      p("This graph shows the CO2 emission over time for different regions.
        By selecting different range of year, we can see the carbon emission
        changes in specifc time period.")
    )
  )
)