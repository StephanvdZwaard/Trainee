# Trainingsdag programmeren in R (Trainee)
# Uitwerking van eerste opdracht TM-dag 27-06-2018
# Stephan vd Zwaard

# Inladen packages
library(tidyverse)

# Create df with two columns with 100 random numbers with varying SD.
df1 <- data.frame(x=rnorm(100, mean=10, sd=2),
                  y=rnorm(100, mean=10, sd=20))

# Create df with time series with upward or negative slope.
# Downward slope
  df2 <- df1 %>%
          arrange(desc(x)) %>%
          rename(response=x) %>%
          mutate(year = 1901:2000)
  ggplot(df2,aes(x=year,y=response)) +
        geom_line()
  
# Upward slope
  df2 <- df1 %>%
          arrange(y) %>%
          rename(response=y) %>%
          mutate(year = 1901:2000)
  ggplot(df2,aes(x=year,y=response)) +
      geom_line()
  
