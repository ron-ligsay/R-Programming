
df <- data.frame(
  Name <- c("Anna","Emman",NA,"Thalia","Marijo"),
  Age <- c(25, 25, 69, NA, 21),
  Salary <- c(48323,NA,3423,3242,21)
)
names(df) = c("Name","Age","Salary")
df_cleaned <- na.omit(df)
View(df)
View(df_cleaned2)

df_cleaned2 <- df[complete.cases(df),]

df_duplicate = data.frame(
  ID = c(1,2,3,2,4,5),
  name = c("Alice","Bob","Alice","Charlie","Bob","David")
)
duplicates <- duplicated(df_duplicate$ID)
View(df_duplicate)
df_unique <- df_duplicate[!duplicates, ]
View(df_unique)

multiply <- function(a,b)
{ result <- a * b; return(result)}

result <- multiply(30, 21)
result



multiply <- function(a,b,c=1,)
{ result <- a * b * c; return(result)}

result <- multiply(30, 21, 3)
result

my_matrix <- matrix(1:30, nrow = 5, ncol = 6)
View(my_matrix)
col_sums <- apply(my_matrix, 2, sum)
print(col_sums)
