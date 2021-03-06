library(plotly)

y <- c('Probability_Definitions',
       'Similarity_Definition',
       'Casual_Reasoning_Definitions')

Probability_Defs_frequences <- data.frame(table(RQ1_Fairness_Definitions$Probability_Definitions)) 
Probability_Defs_frequences['percentage'] <- round(Probability_Defs_frequences$Freq / 116 * 100, 0)
Probability_Defs_frequences['percentage']


Similarity_Defs_frequences <- data.frame(table(RQ1_Fairness_Definitions$Similarity_Definition)) 
Similarity_Defs_frequences['percentage'] <- round(Similarity_Defs_frequences$Freq / 116 * 100, 0)
Similarity_Defs_frequences['percentage']

#add row
Similarity_Defs_frequences[nrow(Similarity_Defs_frequences) + 1,] <- c(1, 0, 0)
#print
print(Similarity_Defs_frequences)

temp = {'Var1': 1, 'Freq': 0, 'percentage': 0}
temp

CR_Defs_frequences <- data.frame(table(RQ1_Fairness_Definitions$Casual_Reasoning_Definitions)) 
CR_Defs_frequences['percentage'] <- round(CR_Defs_frequences$Freq / 116 * 100, 0)
#Balancing
CR_Defs_frequences$percentage[4] <- CR_Defs_frequences$percentage[4] + 1

#print

x1 <- c(Probability_Defs_frequences$percentage[1], Similarity_Defs_frequences$percentage[5], CR_Defs_frequences$percentage[1])
x2 <-c(Probability_Defs_frequences$percentage[2], Similarity_Defs_frequences$percentage[1], CR_Defs_frequences$percentage[2])
x3 <- c(Probability_Defs_frequences$percentage[3], Similarity_Defs_frequences$percentage[2], CR_Defs_frequences$percentage[3])
x4 <- c(Probability_Defs_frequences$percentage[4], Similarity_Defs_frequences$percentage[3], CR_Defs_frequences$percentage[4])
x5 <- c(Probability_Defs_frequences$percentage[5], Similarity_Defs_frequences$percentage[4], CR_Defs_frequences$percentage[5])

data <- data.frame(y, x1, x2, x3, x4, x5)



top_labels <- c('Not at all', 'Slightly', 'Neutral', 'To a great<br>extent', 'Extremely')

fig <- plot_ly(data, x = ~x1, y = ~y, type = 'bar', orientation = 'h', 
               marker = list(color = 'rgba(190, 192, 213, 1)',
                             line = list(color = 'rgb(248, 248, 249)', width = 1))) 
fig <- fig %>% add_trace(x = ~x2, marker = list(color = 'rgba(164, 163, 204, 0.85)')) 
fig <- fig %>% add_trace(x = ~x3, marker = list(color = 'rgba(122, 120, 168, 0.8)')) 
fig <- fig %>% add_trace(x = ~x4, marker = list(color = 'rgba(71, 58, 131, 0.8)')) 
fig <- fig %>% add_trace(x = ~x5, marker = list(color = 'rgba(38, 24, 74, 0.8)')) 

fig <- fig %>% layout(title = 'Fairness definitions applicability for Workers',xaxis = list(title = "",
                                   showgrid = FALSE,
                                   showline = FALSE,
                                   showticklabels = FALSE,
                                   zeroline = FALSE,
                                   domain = c(0.15, 1)),
                      yaxis = list(title = "",
                                   showgrid = FALSE,
                                   showline = FALSE,
                                   showticklabels = FALSE,
                                   zeroline = FALSE),
                      barmode = 'stack',
                      paper_bgcolor = 'rgb(248, 248, 255)', plot_bgcolor = 'rgb(248, 248, 255)',
                      margin = list(l = 120, r = 10, t = 140, b = 80),
                      showlegend = FALSE) 

# labeling the y-axis
fig <- fig %>% add_annotations(xref = 'paper', yref = 'y', x = 0.14, y = y,
                               xanchor = 'right',
                               text = y,
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(67, 67, 67)'),
                               showarrow = FALSE, align = 'right') 
# labeling the percentages of each bar (x_axis)

fig <- fig %>% add_annotations(xref = 'x', yref = 'y',
                               x = x1 / 2, y = y,
                               text = paste(data[,"x1"], '%'),
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(248, 248, 255)'),
                               showarrow = FALSE) 
fig <- fig %>% add_annotations(xref = 'x', yref = 'y',
                               x = x1 + x2 / 2, y = y,
                               text = paste(data[,"x2"], '%'),
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(248, 248, 255)'),
                               showarrow = FALSE) 
fig <- fig %>% add_annotations(xref = 'x', yref = 'y',
                               x = x1 + x2 + x3 / 2, y = y,
                               text = paste(data[,"x3"], '%'),
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(248, 248, 255)'),
                               showarrow = FALSE) 
fig <- fig %>% add_annotations(xref = 'x', yref = 'y',
                               x = x1 + x2 + x3 + x4 / 2, y = y,
                               text = paste(data[,"x4"], '%'),
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(248, 248, 255)'),
                               showarrow = FALSE) 
fig <- fig %>% add_annotations(xref = 'x', yref = 'y',
                               x = x1 + x2 + x3 + x4 + x5 / 2, y = y,
                               text = paste(data[,"x5"], '%'),
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(248, 248, 255)'),
                               showarrow = FALSE) 
# labeling the first Likert scale (on the top)
fig <- fig %>% add_annotations(xref = 'x', yref = 'paper',
                               x = c(21 / 2, 21 + 30 / 2, 21 + 30 + 21 / 2, 21 + 30 + 21 + 16 / 2,
                                     21 + 30 + 21 + 16 + 12 / 2),
                               y = 1.15,
                               text = top_labels,
                               font = list(family = 'Arial', size = 12,
                                           color = 'rgb(67, 67, 67)'),
                               showarrow = FALSE)

fig
