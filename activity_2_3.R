ID <- c(1:12)
ID
StudentNumber <- paste("SN",1001:1012,  sep="")
StudentNumber
Grade <- c(78:83,91:93, 96:98)
Grade
YearLevel <- rep(1:4, each = 3)
YearLevel
student_data  <- data.frame(ID,StudentNumber,Grade,YearLevel)
View(student_data)

# Create the Dataframe
student_data <- data.frame(
  ID <- c(1:12),
  StudentNumber <- c("SN1001","SN1002","SN1003","SN1004","SN1005","SN1006","SN1007","SN1008","SN1009","SN1010","SN1011","SN1012"),
  Grade <- c(78,79,80,81,82,83,91,92,93,96,97,98),
  YearLevel <- c(1,1,1,2,2,2,3,3,3,4,4,4)
)

data1 <- data.frame(
  ID <- c(1:12),
  StudentNumber <- c("SN1001","SN1002","SN1003","SN1004","SN1005","SN1006","SN1007","SN1008","SN1009","SN1010","SN1011","SN1012")
)

data2 <- data.frame(
  Grade <- c(78,79,80,81,82,83,91,92,93,96,97,98),
  YearLevel <- c(1,1,1,2,2,2,3,3,3,4,4,4)
)

student_data <- cbind(data1,data2)
student_data1 <- cbind(data1[1:2],data2[1:2])
View(student_data1)
ls()
names(student_data) <- c("ID","StudentNumber","Grade","YearLevel")
#View(student_data)

# a. Update all the 1st year into 2nd year.
student_data$YearLevel[student_data$YearLevel == 1] <- 2

# b. Add 1 student Information
new_student <- data.frame(
  ID <-c(13),
  StudentNumber <- c("SN5265"),
  Grade <- c(100),
  YearLevel <- c(4)
)
names(new_student) <- c("ID","StudentNumber","Grade","YearLevel")
student_data <- rbind(student_data,new_student)

# c. Delete student with a student number of SN1011, SN1012
student_data <- student_data[student_data$StudentNumber != "SN1011",]
student_data <- student_data[student_data$StudentNumber != "SN1012",]

# d. Add a ggplot2(bar)
students_yearlevel_2 <- student_data[student_data$YearLevel == 2,]

ggplot(students_yearlevel_2, aes(x = ID, y = Grade, fill = StudentNumber)) +
  geom_bar(stat = "identity") + 
  labs(title = "2nd Year Level  Grades", x="Student ID",y="Grade") +
  theme_minimal()


students_grades_91_95 <- student_data[student_data$Grade >= 91 & student_data$Grade <= 95,]

ggplot(students_grades_91_95, aes(x = ID, y = Grade, fill = StudentNumber)) +
  geom_bar(stat = "identity") + 
  labs(title = "Students with Grades 91-95", x="Student ID",y="Grade") +
  theme_minimal()

View(students_grades_91_95)
View(student_data)
