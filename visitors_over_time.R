data <- read.csv("visitor_overtime_monthly.csv", header = TRUE, sep = ",")
print(head(data))
install.packages("ggplot2")
library(ggplot2)
View(data)
library(dplyr)
library(tidyr)
df <- data %>%
  rename(month = time1, count = count...) %>%
  separate(month, into = c("year", "month"), sep = "-")
df$year <- as.integer(df$year)
df$month <- as.integer(df$month)
View(df)
df_2023<-df %>% filter(year=="2023") %>% arrange(month)
View(df_2023)
ggplot(data = df_2023, aes(x = month, y = count, group = 1)) +
  geom_point(color = "blue", size = 3) +  # Points
  geom_line(color = "red") +  # Line connecting points
  ggtitle("Visitors Trend Monthly for year 2023") +
  xlab("Month of the Year") +   # Change x-axis label
  ylab("Total Web Hits") +    
  scale_x_continuous(breaks = 1:12)+
  theme_minimal()

df_2024<-df %>% filter(year=="2024") %>% arrange(month)
View(df_2024)
ggplot(data = df_2024, aes(x = month, y = count, group = 1)) +
  geom_point(color = "blue", size = 3) +
  geom_line(color = "red") +
  ggtitle("Visitors Trend Monthly for year 2024") +
  xlab("Month of the Year")+
  ylab("Total Web Hits") +
  scale_x_continuous(breaks = 1:12)+
  theme_minimal()

df_2025<-df %>% filter(year=="2025") %>% arrange(month)
View(df_2025)
ggplot(data = df_2025, aes(x = month, y = count, group = 1)) +
  geom_point(color = "blue", size = 3) +
  geom_line(color = "red") +
  ggtitle("Visitors Trend Monthly for year 2025") +
  xlab("Month of the Year")+
  ylab("Total Web Hits") +
  scale_x_continuous(breaks = 1:12)+
  theme_minimal()
 