library(plotly)

frequency <- table(RQ5_CMM$CMM)
frequency
data <- data.frame(c(RQ5_CMM$Levels[1:6]), c(13, 30, 28, 18, 16, 11))

data$levels <- factor(data$levels, levels = data$levels[order(data$levels)])
colnames(data) <- c("levels", "companies") 
data$levels
fig <- plot_ly(data, labels = ~levels, values = ~companies, type = 'pie', sort = FALSE)
fig <- fig %>% layout(title = 'Fairness Treatment Maturity for companies',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE)) 

fig