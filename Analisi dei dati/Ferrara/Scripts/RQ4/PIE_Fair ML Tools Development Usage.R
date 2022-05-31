tools <- c(RQ4_Tools$`Tool 1`, RQ4_Tools$`Tool 2`, RQ4_Tools$`Tool 3`, RQ4_Tools$`Tool 4`)
tools <- tools[!is.na(tools)]
tools


frequency <- table(tools)
typeof(frequency)

# Create Data
data <- data.frame(
  group=c("audit-AI", "IBM's AI Fairness 360", "Microsoft Fairlearn", "Google's What-If Tool (binary classification)",
         "PwC’ Responsible AI Toolkit","No-Tools", "Manual Activities", "Not-Information-aviable"),
  value = c(9, 26, 44, 39, 7, 5, 1, 1)
)
data
# Basic piechart
fig <- plot_ly(data, labels = ~group, values = ~value, type = 'pie')
fig <- fig %>% layout(title = 'Fair ML Tools Development Usage',
                      xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig