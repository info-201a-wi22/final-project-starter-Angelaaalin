<<<<<<< HEAD
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
=======
library("shiny")
library("OpenImageR")

intro_page <- tabPanel(
  "Introduction",
  titlePanel("Introduction to \"Climate Change\""),
  mainPanel(
    p("The \"Climate Change\" project is the outcome of the final group assignment of the course - INFO201 WI at UW. The project is non-profit, unfunded, all done by our group members. By working on this project, we seek to find out the correlation between carbon dioxide emissions and temperature changes over time."),
    p("We found two datasets that could potentially answer our question. One is the global land temperature data obtained from Berkley Earth - an independent non-profit organization focused on environmental data science. The study, which the data is from, is entirely transparent. With this dataset, we are able to analyze the temperature data by time classified by geographical location.  The other dataset is the carbon dioxide emission data obtained from Our World in Data, a non-profit organization focus on global problems. We believe the data presented by both these two sources are credible and eligible for this project."),
    p("After a brief analysis of the data. We created a graph shown below. By looking at this graph, we are confident to confirm that there is an increase in temperature in the past two hundred years. After deeply digging into the data, we hope to find out whether there is a relationship between carbon dioxide emission and climate change."),
    plotOutput("intro_image")
  )
)

>>>>>>> 9511f4f43864834bb16bde0067d209792424f8b0
