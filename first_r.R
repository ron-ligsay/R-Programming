
x <- -12
x + 7
abs(x)
# vectors
y <- c(-12, 6, 0, -1)

# install.packages("readxl")
library(readr)
cereal <- read_csv("Programs/80_Cereals/cereal.csv")
View(cereal)

mean(cereal$sodium, na.rm = TRUE)
