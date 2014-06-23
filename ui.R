library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("The Weight Calculator"),  
  sidebarPanel(    
    div("This is a simple calculator of weight."),
    div("Input your Gender and Height."),
    div("Robinson formula, Hamwi formula and health recommendations are going to be used"),
    br(), 
    radioButtons("sex", label = h4("Gender:"), choices = list("Male" = 1, "Female" = 2), selected = 1),  
    sliderInput("height", label = h4("Height (cm):"), min=100, max=230, value=175)    
  ),
  mainPanel(
    h3("Results"),
    textOutput("w1"),
    textOutput("w2"),
    textOutput("w3")
  )  
))
