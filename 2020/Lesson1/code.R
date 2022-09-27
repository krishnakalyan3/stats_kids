install.packages("tidyverse")
library(tidyverse)
library(corrplot)


# Rohan
mean(mtcars$mpg)
median(mtcars$mpg)
table(mtcars$carb)
plot(mtcars$mpg)

quantile(mtcars$mpg)
hist(mtcars$mpg)

cor(mtcars$mpg, mtcars$wt)

str(data_four_cars)

# Types
mtcars$gear <- as.integer(mtcars$gear)
corrplot(cor(mtcars), type="upper")

# Select
save_niyati <- mtcars %>% select(gear, carb, am)

# Filter
data_four_cars <- mtcars %>% filter(carb == 4)
