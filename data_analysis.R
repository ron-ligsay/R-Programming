
# data analysis
# install.packages("tidyverse")
library("tidyverse")

data()
View(mpg)
?mpg
?mean


glimpse(mpg)

?filter
filter(mpg, cty >= 20)
mgp_efficient <- filter(mpg, cty >= 20)
View(mgp_efficient)

mpg_ford <- filter(mpg, manufacturer == "ford")
View(mpg_ford)
