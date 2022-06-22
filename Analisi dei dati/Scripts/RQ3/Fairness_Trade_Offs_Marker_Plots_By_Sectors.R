library(plotly)




data <- RQ3_TradeOffs_Sectors
data

#Usability
fig <- plot_ly(data, x = ~as.factor(Usability), y = ~Sectors, name = "Usability", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(240,163,10,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 1: Usability vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 3.5, x1 =4.5))
)

fig

#Reliability
data$Reliability
fig <- plot_ly(data, x = ~as.factor(Reliability), y = ~Sectors, name = "Reliability", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(50,205,50,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 2: Reliability vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5))
)

fig


#Performance
data$Performance
fig <- plot_ly(data, x = ~as.factor(Performance), y = ~Sectors, name = "Performance", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(238,130,238,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 3: Performance vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 3.5, x1 =4.5))
)

fig


#Supportability
data$Supportability
fig <- plot_ly(data, x = ~as.factor(Supportability), y = ~Sectors, name = "Supportability", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(0,173,238,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 4: Supportability vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 3.5, x1 =4.5))
)

fig

 #Accuracy
fig <- plot_ly(data, x = ~as.factor(Accuracy), y = ~Sectors, name = "Accuracy", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(0,255,128,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 5: Accuracy vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5))
)

fig

#Security And Safety
data$`Security and safety`
fig <- plot_ly(data, x = ~as.factor(`Security and safety`), y = ~Sectors, name = "Security and Safety", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(107,0,0,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 6: Security and Safety vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5))
)

fig



#Maintenability and Retraining 
fig <- plot_ly(data, x = ~as.factor(`Maintenability and retraining`), y = ~Sectors, name = "Maintenability and Retraining", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(168, 42, 78,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 7: Maintenability and Retraining vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 3.5, x1 =4.5))
)

fig


#Reusability And Scalability

fig <- plot_ly(data, x = ~as.factor(`Reusability and scalability`), y = ~Sectors, name = "Reusability And Scalability", type = 'scatter',
               mode = "markers", marker = list(color = "rgba(17, 237, 147,1)", line = list(
                 color = 'black',
                 width = 0.7 
               )))


fig <- fig %>% layout(
  xaxis = list(title = 'Level of relevance'),
  title = "Trade-off 8: Reusability And Scalability vs Fairness",
  margin = list(l = 100),
  shapes = list(
    list(type = "rect", fillcolor = "blue", line = list(color = "blue"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = -0.5, x1 = 0.5),
    list(type = "rect", fillcolor = "green", line = list(color = "green"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 0.5, x1 = 1.5),
    list(type = "rect",  fillcolor = "yellow", line = list(color = "yellow"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 1.5, x1 = 2.5),
    list(type = "rect", fillcolor = "orange", line = list(color = "orange"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 2.5, x1 = 3.5),
    list(type = "rect", fillcolor = "red", line = list(color = "red"),
         opacity = 0.1, y0 = -2, y1 = 34, x0 = 3.5, x1 =4.5))
)

fig