library("shiny")

data = read.csv("../data/gloabl_temp_archive/GlobalLandTemperaturesByCountry.csv")

country_select <- unique(data$Country)

country_input <- selectInput(
  inputId = "country",
  label = "country of Interest",
  choices = country_select,
  selected = "country",
  multiple = TRUE
)

summary_page <- tabPanel(
  "Summary",
  titlePanel("Summary"),
  mainPanel(
    country_input,
    plotOutput("countryTemp")
  )
)
