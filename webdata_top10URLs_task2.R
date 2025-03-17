install.packages("tidyverse")
library(tidyverse)
install.packages("openxlsx")
library(openxlsx)
df<- read.xlsx("view_visitor_R.xlsx", sheet = 1)
head(df)
str(df)
View(df)
df_10 <- head(df, 10)
View(df_10)

install.packages("ggplot2")  # Install ggplot2 if not already installed
library(ggplot2)  # Load the package
df_10$order <- 1:10
View(df_10)
library(stringr)
ggplot(data=df_10)+
 # geom_bar(mapping=aes(x=factor(url, levels = url),y=visitor_count),stat = "identity")+
 #labs(title = "URL Count Bar Chart")+
  #theme(axis.text.x = element_text(hjust = 1))+
  #scale_x_discrete(labels = function(x) str_wrap(x, width = 30))
ggplot(data=df_10)+
  geom_bar(mapping=aes(x=order,y=visitor_count),stat = "identity")+
  scale_x_continuous(breaks = seq(0, max(df$order), by = 1))     # Full number breaks

                            
                            