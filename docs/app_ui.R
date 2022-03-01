#Library Package
library("shiny")

#Source Page

source("../tabs/interactive1.R")
source("../tabs/interactive2.R")

#App UI
ui <- navbarPage("Climate Change",
                 interactive_1,
                 interactive_2
                )

