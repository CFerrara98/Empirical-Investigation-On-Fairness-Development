library(plotly)
library(dplyr)


occupation <- data.frame(table(Roles$`Occupation Role`))
occupation


temp1 <- data.frame(Roles$`Occupation Role`, Roles$`Mean Role Experience`)
colnames(temp1) <- c('Occupation Role', 'means')
temp1

temp2 <- summarise_at(group_by(temp1, `Occupation Role`),vars(means),funs(mean(.,na.rm=TRUE)))
temp2

rownames(temp1) <- Roles$`Occupation Role`

occupation_lab <- occupation$Var1
frequency <- occupation$Freq
mean_years <-  aggregate(as.numeric(Roles$`Mean Role Experience`), by=list(Roles$`Occupation Role`), FUN=mean)
data <- data.frame(occupation_lab, frequency, mean_years$x)
data

fig <- plot_ly(data, x = occupation_lab, y = ~frequency, type = 'bar', name = 'Role Frequency')
fig <- fig %>% add_trace(y = ~mean_years.x, name = 'Means of year experience')
fig <- fig %>% layout(yaxis = list(title = 'Count'), barmode = 'group')

fig
