library(plotly)
library(dplyr)# Install stringr package
library("stringr")                   # Load stringr


RQ4_ML_Pipeline$`Requirement elicitation and analysis`
Importance_Freqtable (RQ4_ML_Pipeline$`Requirement elicitation and analysis`)

class <- c("Requirement elicitation and analysis", "Data preparation", 
           "Model building", "Model training and testing", "Model validation<br>and verification",
           "Model deployment and monitoring", "Analysis and statistics")  

[order(df$fill_var,decreasing=T),]

g <- ggplot(RQ4_Vertical_Visualization, aes(Activity))  +                                # Modify labels of ggplot2 barplot
  scale_x_discrete(labels = function(x) str_wrap(x, width = 10))
  
p <-  g + geom_bar(aes(fill = factor(Importance, levels = RQ4_ML_Pipeline$`Qualitative Scale`[5:1]))) + labs(x = "Activities", y = "Individuals", fill = "Importance",title = "Fairness strategies during a ML Pipeline development")

ggplotly(p)


