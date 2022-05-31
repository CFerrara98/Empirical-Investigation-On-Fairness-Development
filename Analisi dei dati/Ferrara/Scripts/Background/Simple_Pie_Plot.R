install.packages("plotly")
library(plotly)

data <- data.frame(table(Background$`Occupation Role`))
data

fig <- plot_ly(data, labels = data$Var1, values = data$Freq, type = 'pie')
fig <- fig %>% layout(title = 'Survey Partecipants Occupation Role',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig
