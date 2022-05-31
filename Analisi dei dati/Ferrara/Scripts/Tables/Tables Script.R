#Tables
library(plotly)



#Fairness Definitions
groups <- c("General", "Probability Definitions", "Similarity Definitions", "Casual Reasoning Definitions") 
definitions <- c(RQ1_Fairness_Definitions$`General Definitions`[1], RQ1_Fairness_Definitions$`Survey Definitions`[1:3])

groups
definitions

fig <- plot_ly(
  type = 'table',
  columnwidth = c(50, 100),
  columnorder = c(0, 1),
  header = list(
    values = c("Definitions Group","Explainations"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(groups, definitions),
    align = c("center", "left"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig


#Fairness Approaches
groups <- c("Approach1", "Approach2", "Approach3") 
approaches <- c(RQ1_Fairness_Approaches$Approaches[1:3])

groups
definitions

fig <- plot_ly(
  type = 'table',
  columnwidth = c(50, 100),
  columnorder = c(0, 1),
  header = list(
    values = c("Approach","Explaination"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(groups, approaches),
    align = c("center", "left"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig


#Role Impact

fig <- plot_ly(
  type = 'table',
  columnwidth = c(10, 20),
  columnorder = c(0, 1),
  header = list(
    values = c("Level of Impact","Meaning"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(RQ2_Teem_Role_Impact$`Quantitative Scale`[1:5], RQ2_Teem_Role_Impact$`Qualitative Scale`[1:5]),
    align = c("center", "left"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig


#Trade offs Scale

fig <- plot_ly(
  type = 'table',
  columnwidth = c(10, 20),
  columnorder = c(0, 1),
  header = list(
    values = c("Level of Importance","Meaning"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(RQ3_Fairness_TradeOffs$`Quantitative Scale`[1:5], RQ3_Fairness_TradeOffs$`Qualitative Scale`[1:5]),
    align = c("center", "left"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig

#Pipeline Relevance of apply Fairness Approaches in a pipeline

fig <- plot_ly(
  type = 'table',
  columnwidth = c(10, 10),
  columnorder = c(0, 1),
  header = list(
    values = c("Level of Relevance","Meaning"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(RQ4_ML_Pipeline$`Quantitative Scale`[1:5], RQ4_ML_Pipeline$`Qualitative Scale`[1:5]),
    align = c("center", "left"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig

#Maturity Levels

fig <- plot_ly(
  type = 'table',
  columnwidth = c(10, 10),
  columnorder = c(0, 1),
  header = list(
    values = c("Level of Maturity","Meaning"),
    align = c("center", "center"),
    line = list(width = 1, color = 'black'),
    fill = list(color = c("grey", "grey")),
    font = list(family = "Arial", size = 14, color = "white")
  ),
  cells = list(
    values = rbind(RQ5_CMM$Levels[1:6], RQ5_CMM$Maturity[1:6]),
    align = c("center", "left"),
    line = list(color = "black", width = 1),
    font = list(family = "Arial", size = 12, color = c("black"))
  ))

fig