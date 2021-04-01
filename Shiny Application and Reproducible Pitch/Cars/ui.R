library(shiny)

shinyUI(fluidPage(
    titlePanel("Prediction of Stopping Distance"),
    sidebarLayout(
        sidebarPanel(
            helpText("Prediction of stopping distances of cars by designated speed.
                     Note that the data were recorded in the 1920s."),
            sliderInput(inputId = "sp",
                        label = "Speed of car in mph:",
                        value = 15,
                        min = 5,
                        max = 30,
                        step = 1),
        ),
        mainPanel(
            htmlOutput("text"),
            htmlOutput("pred"),
            plotOutput("plot")
        )
    )
))