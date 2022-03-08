# Introduction #
library("shiny")
intro_page <- tabPanel("Introduction", 
              titlePanel("Introduction"),
              p("Our project is to investigate the relationship between carbon 
              emission and global temperature. Through this project, we can figure
              out whether human mainly causes climate change, how global warming
              affects the world so far, and whether our actions today are enough 
              to forestall the direct impacts of climate change. We decided to 
              focus on the CO2 emissions in the United States and the global
              temperature change. We use the data about CO2 emission over time
              in different countries and in various states in the United States 
              to demonstrate our project."),
              img("Figure 1: Greenhouse Gas Contribution in the US.",
                  src = "https://water.unl.edu/Greenhouse%20Gas%20Contributors%20in%20the%20US.png")
)