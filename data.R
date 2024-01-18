
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
  Booelan = c(TRUE)
    )

# combine dataframe
new_data


