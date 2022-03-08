#Library Package
library("shiny")

#Source Page

source("../tabs/interactive1.R")
source("../tabs/interactive2.R")
source("../tabs/introduction.R")

#App UI
ui <- navbarPage("Climate Change",
                 intro_page,
                 interactive_1,
                 interactive_2
                )

