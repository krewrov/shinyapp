#
# Coursera
# Developing Data Products
# Assignment week 4
# January 2017, Erwin Vorwerk
#
#
# Shiny Application - Server Component
#

#
# Ensure required libraries are present
#
require(plot3D)

#
# Set up shinyServer controls
#

shinyServer(function(input,output)
{
  #
  # Prepare plot
  #
  output$sunplot <- renderPlot({
                    #
                    # Process input from input panel
                    #
                    minMonth <- input$sliderMonth[1]
                    maxMonth <- input$sliderMonth[2]
                    minYear  <- input$sliderYear[1]
                    maxYear  <- input$sliderYear[2]
                    newAngle <- input$sliderAngle
                    #
                    # Create subsetmatrix using selectors
                    #
                    # subset_dataframe <- as.data.frame(sunmatrix[(minYear-1749+1):(maxYear-1749+1),minMonth:maxMonth])
                    subset_matrix <- sunmatrix[(minYear-1749+1):(maxYear-1749+1),minMonth:maxMonth]
                    #
                    # 
                    #
                    #boxplot(subset_dataframe)
                    #plot(subset_dataframe, pch = ".")
                    persp3D(z=subset_matrix, theta=newAngle, clab="Sunspots", xlab="Years", ylab="Months", zlab="Sunspots")
  })
}
  
)