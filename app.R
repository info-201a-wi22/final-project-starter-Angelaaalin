
library("shiny")
source("docs/app_ui.R")
source("docs/app_server.R")

# Run the application
shinyApp(ui = ui, server = server)
