#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Server side code
shinyServer(function(input, output) {
    
    # Code that generates the plot with the regression of the information filled in the front side

    #On %s we receive the horizontal and vertical axis from front side
    output$plot <- renderPlot({
        strig_plot = sprintf("g= ggplot(mpg) + geom_boxplot(aes(x=%s, y=%s))  ",
                                 input$x, input$y)
        
        
        eval(parse(text=strig_plot))
        
        
        g
    })
    
    
})