Shinyapp for Speed-Dist Prediction
========================================================
author: Yigang
date: April 01, 2021
autosize: true

Introduction
========================================================
### Background
The data give the speed of cars and the distances taken to stop. Note that the data were recorded in the 1920s.

### Source
Ezekiel, M. (1930) Methods of Correlation Analysis. Wiley.

### Goal of This Application
Calculate and Visualize the predicted stopping distances of cars by user designated speed.

Algorithm of Processing Data
========================================================

- Use lm function to build a linear regression model


```r
lm(dist ~ speed, data = cars)
```

```

Call:
lm(formula = dist ~ speed, data = cars)

Coefficients:
(Intercept)        speed  
    -17.579        3.932  
```

APP FUNCTIONALITY
========================================================
- Input speed value by dragging the bar
- Predicted stopping distance will be shown on the main panel
- Input value and prediction highlighted on the graph.

![plot of chunk unnamed-chunk-2](Pitch Presentation-figure/f1.jpg)

Thank You
========================================================

### References
McNeil, D. R. (1977) Interactive Data Analysis. Wiley.

### Shinyapp link
https://nocturnes92.shinyapps.io/Cars/



