
library(tidyverse)
library(readxl)

df <- read_excel("data.xlsx")

df_new <- df %>% select(Year, SPI_Kubuta, SPI_Nhlangano) %>% 
  filter(Year > 1986, SPI_Kubuta < 0) %>% 
  mutate(col_no1 = SPI_Kubuta/4) %>% 
  mutate(col_no2 =  col_no1 * SPI_Nhlangano, .after=SPI_Kubuta)







