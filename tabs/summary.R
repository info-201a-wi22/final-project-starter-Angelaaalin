library("shiny")

data = read.csv("data/gloabl_temp_archive/GlobalLandTemperaturesByCountry.csv")

country_select <- unique(data$Country)

country_input <- selectInput(
  inputId = "temp_country",
  label = "country of Interest",
  choices = country_select,
  selected = "Asia",
  multiple = TRUE
)

summary_page <- tabPanel(
  "Summary",
  titlePanel("Summary"),
  mainPanel(
    p("Key Take Away 1: The carbon dioxide emission of the world has been increasing over the past two hundred years. The trend speeded up tremendously around the 1950s. However, the increment was primarily from Asia, especially in the late twentieth century. Asia contributed the majority of the increase in emissions. In comparison, there is even a decrease in the emission in Europe in the 1990s. The spike in the graph seems to be normal, since, with the development of the production level, carbon dioxide emission is inevitable. The recent slower momentum in the increase could be explained by the greenhouse gas reduction plan implemented by many countries in the world."),
    p("Key Take Away 2: The temperature graph shows that most regions shared a similar trend in temperature change. There is an increase overall in the recent hundred years. The year land average temperature rises two degrees celsius roughly since 1900 on all continents. The flat or even negative trend around 1950 could be explained by the impact of World War II."),
    country_input,
    plotOutput("countryTemp"),
    p("Key Take Away 3: Though the trend of carbon dioxide emissions varied by region, the temperature changes were similar. It is reasonable since climate change is a global issue; no single region can step away from it. The emissions impact the temperature globally. A similar overall trend in both carbon dioxide emission and temperature change may imply a positive correlation between these two variables. Thus we believe the CO2 emission and temperature change are related.")
  )
)
