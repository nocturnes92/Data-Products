library(shiny)
library(dplyr)
library(ggplot2)
library(ggpmisc) 

# Load data set
data.frame(data(cars))

# Build linear model
fit <- lm(dist ~ speed, data = cars)

shinyServer(function(input, output) {
    output$text <- renderText({
        paste("The speed of car is",
              strong(input$sp))
    })
    output$pred <- renderText({
        sp <- data.frame(speed = input$sp)
        ds <- predict(fit, newdata = sp)
        paste0("The predicted stopping distance is ",em(strong(round(ds, 1)))," ft")
    })
    output$plot <- renderPlot({
        sp <- data.frame(speed = input$sp)
        ds <- predict(fit, newdata = sp)
        df <- data.frame(speed = sp, dist = ds)
        ggplot(cars, aes(x=speed, y=dist)) +
            geom_point()+
            geom_point(data = df, mapping = aes(x=speed, y=dist),
                       size = 10, colour = "red")+
            geom_smooth(method = 'lm', formula = y ~ x) +
            stat_poly_eq(aes(label = paste(..eq.label.., ..adj.rr.label.., sep = '~~~~')),
                         formula = y ~ x, parse = T) +
            xlab("Speed of Car(mph") +
            ylab("Stopping Distance(ft)")+
            theme_classic()
    })
})