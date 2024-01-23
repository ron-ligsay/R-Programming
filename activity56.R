exam_data <- data.frame(
  student_id = c(1:5),
  exam1 = c(75, NA, 90, 105, 85),
  exam2 = c(80, 88, 92, -5, 95),
  exam3 = c(92, 78, 85, 110, NA)
)

exam_data$exam1[is.na(exam_data$exam1)] <- mean(exam_data$exam1, na.rm = TRUE)
exam_data$exam2[is.na(exam_data$exam2)] <- mean(exam_data$exam2, na.rm = TRUE)
exam_data$exam3[is.na(exam_data$exam3)] <- mean(exam_data$exam3, na.rm = TRUE)

exam_data$exam1[exam_data$exam1 < 0 | exam_data$exam1 > 100] <- NA
exam_data$exam2[exam_data$exam2 < 0 | exam_data$exam2 > 100] <- NA
exam_data$exam3[exam_data$exam3 < 0 | exam_data$exam3 > 100] <- NA

#View(exam_data)

for (col in colnames(exam_data)) {
  cat("Summary for column", col, ":\n")
  print(summary(exam_data[[col]]))
  cat("\n")
}