#
# Coursera
# Developing Data Products
# Assignment week 4
# January 2017, Erwin Vorwerk
#

#
# Shiny Application - User Interface Component
#

#
# Ensure required libraries are present
#
require(shiny)

#
# Use 'sunspots' data
#
sunmatrix <- matrix(unlist(sunspots), 
                    ncol=12, 
                    byrow = TRUE,
                    dimnames = list(c(1749:1983),
                                    c(1:12)
                    )
)

#
# Set up frame on the left with selectors
#
shinyUI(
  fluidPage(
    titlePanel("Sun Spot Data"),
    sidebarLayout(
      sidebarPanel(
        sliderInput("sliderMonth", "Select what months to plot", 1, 12, value = c(1,12)),
        sliderInput("sliderYear", "Select what years to plot", 1749, 1983, value = c(1900,1975)),
        sliderInput("sliderAngle", "Select what angle to plot", 35, min = -180, max = 180)
      ),
      mainPanel(
        h3("Graph of Sun Spots"),
        plotOutput("sunplot")
      )
    )
))
