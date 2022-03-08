#Library Package
library("shiny")

#Source Page

source("../tabs/interactive1.R")
source("../tabs/interactive2.R")
<<<<<<< HEAD
source("../tabs/interactive3.R")
source("../tabs/introduction.R")
=======
source("../tabs/introduction.R")

>>>>>>> 9511f4f43864834bb16bde0067d209792424f8b0
#App UI
ui <- navbarPage("Climate Change",
                 intro_page,
                 interactive_1,
                 interactive_2,
                 interactive_3
                )

