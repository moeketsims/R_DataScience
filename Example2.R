
library(tidyverse)
library(readxl)
library(ggplot2)

df <- tibble(read.csv("train.csv", sep = ";"))
df$Survived <- as.factor(df$Survived)
df$Pclass <- as.factor(df$Pclass)

# df$Age[which(is.na(df$Age))] = 0 
# 
# which(is.na(df$Sex))

x <- df$Age

df %>%  mutate(cat_age = ifelse(x < 10,0, ifelse(x<20,1, ifelse(x<30, 2,ifelse(x>=30,3, 100)))))
#--------------------------------------------------------------------------------------------------------------------------

#loop

x <- c(2, 6, 7, 8, 9, 10, 12.5, 24)

1:length(x)


for (j in seq_along(x)) {
  for (i in 1:4) {
    print(i*j)
  }
}
#__________________________________________________________________________________________________________________________

sq_x <- function(x, y){
  return (x*y)
}

sq_x(4, 3)
#____________________________________________________________________________________________________________________________

df_new <- df %>% select(Age, SibSp, Parch)

apply(df_new, 2, mean, na.rm = TRUE)




       