
library(plotly)

impatto <- RQ2_Teem_Role_Impact$`Qualitative Scale`[1:5]

Data_Scientists  <- RQ2_Role_Frequences$`Data Scientist`
Software_Engineers <- RQ2_Role_Frequences$`Software Engineer` 
Data_Engineer <- RQ2_Role_Frequences$`Data Engineer` 
Managers <- RQ2_Role_Frequences$`Manager / Project Manager` 
Software_Analysts <- RQ2_Role_Frequences$`Software Analyst` 
Software_Architects <- RQ2_Role_Frequences$`Software Architect` 
Fairness_Experts <- RQ2_Role_Frequences$`Fairness Expert`

data <- data.frame(impatto, Data_Scientists, Software_Engineers, Data_Engineer, Managers, Software_Analysts,Software_Architects , Fairness_Experts)
data

fig <- plot_ly(data, x = ~scala, y = ~Data_Scientists, type = 'bar', name = 'Data_Scientists')
fig <- fig %>% layout(yaxis = list(title = 'Count'), barmode = 'group')
fig <- fig %>% add_trace(y = ~Software_Engineers, name = 'Software_Engineers')
fig <- fig %>% add_trace(y = ~Data_Engineer, name = 'Data_Engineer')
fig <- fig %>% add_trace(y = ~Managers, name = 'Managers')
fig <- fig %>% add_trace(y = ~Software_Analysts, name = 'Software_Analysts')
fig <- fig %>% add_trace(y = ~Software_Architects, name = 'Software_Architects')
fig <- fig %>% add_trace(y = ~Fairness_Experts, name = 'Fairness_Experts')
fig


#Box Plots
fig <- plot_ly(y = RQ2_Teem_Role_Impact$`Data Scientist`, type = "box", quartilemethod="linear", name="Data Scientists")
fig <- fig %>% add_trace(y = RQ2_Teem_Role_Impact$`Software Engineer`, quartilemethod="linear", name="Software Engineers")
fig <- fig %>% add_trace(y = RQ2_Teem_Role_Impact$`Data Engineer`, quartilemethod="linear", name="Data Engineer")
fig <- fig %>% add_trace(y =  RQ2_Teem_Role_Impact$`Manager / Project Manager`, quartilemethod="linear", name="Managers / Project Managers")
fig

fig2 <- plot_ly(y = RQ2_Teem_Role_Impact$`Software Analyst`, type = "box", quartilemethod="linear", name="Software Analysts")
fig2 <- fig2 %>% add_trace(y = RQ2_Teem_Role_Impact$`Software Architect`, quartilemethod="linear", name="Software Architects")
fig2 <- fig2 %>% add_trace(y = RQ2_Teem_Role_Impact$`Fairness Expert`, quartilemethod="linear", name="Fairness Experts")
fig2