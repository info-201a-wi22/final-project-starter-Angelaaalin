# Interactive Page 3 #
library("ggplot2")
library("plotly")
library("shiny")

interactive_3 <- tabPanel(
  "Interactive 3",
  titlePanel("Temperature Changes by States"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "State",
        label = "State",
        choices = c("Washington", "California", "New York", "Texas", "Florida",
                    "Pennsylvania", "Virginia", "Massachusetts", "Ohio", "Illinois"),
        selected = "Washington"
      )
    ),
    mainPanel(
      titlePanel("Temperature Changes by States"),
      plotlyOutput("plot3"),
      p("This plot shows the monthly average temperature after 2000 in the ten states
      listed. By selecting the states, it demonstrates the temperature change
      over time.")
    )
  )
  
)
