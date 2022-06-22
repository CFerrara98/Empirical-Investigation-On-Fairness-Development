library(plotly)

fig <- plot_ly(
  type = 'table',
  columnwidth = c(10, 10),
  columnorder = c(0, 1),
  header = list(
    values = c("Quantitative Scale","Qualitative Scale"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(RQ3_Fairness_TradeOffs$`Quantitative Scale`[1:5], RQ3_Fairness_TradeOffs$`Qualitative Scale`[1:5]),
    align = c("center", "center"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig


#Plots

usability <- sort(RQ3_Fairness_TradeOffs$Usability)
reliability <- sort(RQ3_Fairness_TradeOffs$Reliability)
performance <- sort(RQ3_Fairness_TradeOffs$Performance)
supportability <- sort(RQ3_Fairness_TradeOffs$Supportability)
accuracy <- sort(RQ3_Fairness_TradeOffs$Accuracy)
security_and_safety <- sort(RQ3_Fairness_TradeOffs$`Security and safety`)
maintenability_and_retraining <- sort(RQ3_Fairness_TradeOffs$`Maintenability and retraining`)
reusability_and_scalability <- sort(RQ3_Fairness_TradeOffs$`Reusability and scalability`)
x <- c(1:116)
x

fairness <- c(0)
fairness[1:116] <- 0 
data <- data.frame(x, fairness, usability, reliability, performance, supportability, accuracy, security_and_safety, maintenability_and_retraining, reusability_and_scalability)

#Usability

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Usability vs. Fairness in a machine learning system',
                      xaxis = list(title = "Individuals"),
                      yaxis = list(title = "Degree of Importance "),
                      shapes = list(
                        list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
                        opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 3),
                        list(type = "rect", fillcolor = "green", line = list(color = "green"),
                             opacity = 0.2, y0 = -2, y1 = 2, x0 = 4, x1 = 9),
                        list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                             opacity = 0.2, y0 = -2, y1 = 2, x0 = 10, x1 = 31),
                        list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                             opacity = 0.2, y0 = -2, y1 = 2, x0 = 32, x1 = 88),
                        list(type = "rect", fillcolor = "red", line = list(color = "red"),
                             opacity = 0.2, y0 = -2, y1 = 2, x0 = 89, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~usability, type = 'scatter', mode = 'lines', name = 'Usability', line = list(color = 'rgba(21,27,141,0.8)', width = 2))  

fig


#reliability

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Reliability vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 1),
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 2, x1 = 6),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 7, x1 = 28),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 29, x1 = 77),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 78, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~reliability, type = 'scatter', mode = 'lines', name = 'Reliability', line = list(color = 'rgba(50,205,50,0.8)', width = 2))  

fig

#performance

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Performance vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 3),
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 4, x1 = 10),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 11, x1 = 35),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 36, x1 = 86),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 87, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~performance, type = 'scatter', mode = 'lines', name = 'Performance', line = list(color = 'rgba(238,130,238,1)', width = 2))  

fig


#supportablity

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Supportablity vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 2),
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 3, x1 = 14),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 15, x1 = 52),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 53, x1 = 100),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 101, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~supportability, type = 'scatter', mode = 'lines', name = 'Supportablity', line = list(color = 'rgba(0,173,238,1)', width = 2))  

fig



#accuracy

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Accuracy vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 3),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 4, x1 = 27),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 28, x1 = 79),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 80, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~accuracy, type = 'scatter', mode = 'lines', name = 'Accuracy', line = list(color = 'rgba(0,255,128,1)', width = 2))  

fig

#security_and_safety

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Security and Safety vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 6),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 7, x1 = 15),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 16, x1 = 59),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 60, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~security_and_safety, type = 'scatter', mode = 'lines', name = 'Security And Safety', line = list(color = 'rgba(107,0,0,1)', width = 2))  

fig

#maintenability_and_retraining
fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Maintenability and Retraining vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 3),
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 4, x1 = 16),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 17, x1 = 40),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 41, x1 = 96),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 97, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~maintenability_and_retraining, type = 'scatter', mode = 'lines', name = 'Maintenability and Retraining', line = list(color = 'rgba(168, 42, 78,1)', width = 2))  

fig

#reusability_and_scalability

fig <- plot_ly(data, x = ~x)  


fig <- fig %>% layout(title = "", xaxis = xaxis, yaxis = yaxis, margin = margin,
                      autosize = FALSE,
                      showlegend = FALSE,
                      annotations = television_1) 
fig  <- fig %>% layout(title = 'Reusability and Scalability vs. Fairness in a machine learning system',
                       xaxis = list(title = "Individuals"),
                       yaxis = list(title = "Degree of Importance "),
                       shapes = list(
                         list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 1, x1 = 3),
                         list(type = "rect", fillcolor = "green", line = list(color = "green"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 4, x1 = 15),
                         list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 16, x1 = 52),
                         list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 53, x1 = 96),
                         list(type = "rect", fillcolor = "red", line = list(color = "red"),
                              opacity = 0.2, y0 = -2, y1 = 2, x0 = 97, x1 = 116)))
fig <- fig %>% add_trace(y = ~fairness, type = 'scatter', mode = 'lines', name = 'Fairness' , line = list(color = 'rgba(253,208,23,1)', width = 2))  
fig <- fig %>% add_trace(y = ~reusability_and_scalability, type = 'scatter', mode = 'lines', name = 'Reusability and Scalability', line = list(color = 'rgba(17, 237, 147,1)', width = 2))  

fig