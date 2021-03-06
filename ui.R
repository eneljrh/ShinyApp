#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Front side
shinyUI(pageWithSidebar(
    
   
    headerPanel("BoxPlot of two variables chosen from mpg dataset"),
    
    
    # Sidebar Panel with two dropbox for both: vertical and  horizontal axis 
    sidebarPanel(
        
        selectInput("x", "Horizontal Axis:", choices = colnames(mpg), selected = "hwy"),
        selectInput("y", "Vertical Axis:", choices = colnames(mpg), selected = "cyl"),
   
    ),
    
    # Show the generated plot
    mainPanel(
        plotOutput("plot"),
     
    )
))