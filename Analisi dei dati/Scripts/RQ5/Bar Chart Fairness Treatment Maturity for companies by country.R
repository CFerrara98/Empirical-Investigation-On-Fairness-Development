library(plotly)

Provenience <- c("Asia", "Europe", "North America", "Africa","Prefer not to say", "South America")
level0 <- RQ5_Level0$`Level 0`
level1 <- RQ5_Level1$`Level 1`
level2 <- RQ5_Level2$`Level 2`
level3 <- RQ5_Level3$`Level 3`
level4 <- RQ5_Level4$`Level 4`
level5 <- RQ5_Level5$`Level 5`



data <- data.frame(Provenience, level0, level1, level2, level3, level4, level5)

fig <- plot_ly(data, x = ~Provenience, y = ~level0, type = 'bar', name = 'Level 0')
fig <- fig %>% add_trace(y = ~level1, name = 'Level 1')
fig <- fig %>% add_trace(y = ~level2, name = 'Level 2')
fig <- fig %>% add_trace(y = ~level3, name = 'Level 3')
fig <- fig %>% add_trace(y = ~level4, name = 'Level 4')
fig <- fig %>% add_trace(y = ~level5, name = 'Level 5')

fig <- fig %>% layout(title = "Fairness treatment maturity model by country",
                      xaxis = list(title = "Participants Country"),
                      yaxis = list(title = "Participants"), barmode = 'stack')
fig

