
a <- c(1,2,3,4,5,-2)
b <- c("one","two","three","four","five","negative two")
typeof(a)
typeof(b)

c <- c(TRUE,TRUE,FALSE,FALSE)
typeof(c)

list(a)

a[c(2,4)]

a <- c(1:20)
a [c(a > 8) || a < 6]
a [c(a > 8)]

# data frames
d <- c(1,2,3,4)
e <- c("red","white","red",NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
new_data <- data.frame(d,e,f)
View(new_data)
names(new_data) <- c("ID","Color","Boolean")

map_data <- data.frame(
  ID = c(5),
  Color = c('Blue'),
  Boolean = c(TRUE)
    )

# combine dataframe
new_data <- rbind(map_data, new_data)

sale_data <- data.frame(
  ID = c(6),
  Color = c('Violet'),
  Boolean = c(FALSE)
)
new_data <- rbind(new_data,sale_data)

# removing column
new_data <- new_data[new_data$Color != "Blue",]
new_data <- new_data[new_data$Boolean != FALSE,]

#


# Remove the "Color" column using subset
new_data <- subset(new_data, select = -Color)

# Remove the "Color" column using indexing
new_data <- new_data[, -which(names(new_data) == "Boolean")]

sales_data <- data.frame(
  Product =c("Product1","Product2","Product3","Product4"),
  Sales = c(120,85,150,190)
)
new_sales_data <- data.frame(
  Product =c("Product5","Product5"),
  Sales = c(120,85)
)

sales_data <- rbind(sales_data, new_sales_data)
View(sales_data)


high_sales_data <- sales_data[sales_data$Sales > 120,]
View(high_sales_data)

install.packages("ggplot2")
library(ggplot2)


ggplot(sales_data, aes(x = Product, y = Sales, fill = Product)) +
  geom_bar(stat = "identity") + 
  labs(title = "Product Sales", x="Product",y="Sales") +
  theme_minimal()

ggplot(high_sales_data, aes(x = Product, y = Sales, fill = Product)) +
  geom_bar(stat = "identity") + 
  labs(title = "Product Sales", x="Product",y="Sales") +
  theme_minimal()


