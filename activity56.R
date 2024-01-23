# Dataset
exam_data <- data.frame(
  student_id = c(1:5),
  exam1 = c(75, NA, 90, 105, 85),
  exam2 = c(80, 88, 92, -5, 95),
  exam3 = c(92, 78, 85, 110, NA)
)

# Task 1: Write Conditional Statements
exam_data$exam1[is.na(exam_data$exam1)] <- mean(exam_data$exam1, na.rm = TRUE)
exam_data$exam2[is.na(exam_data$exam2)] <- mean(exam_data$exam2, na.rm = TRUE)
exam_data$exam3[is.na(exam_data$exam3)] <- mean(exam_data$exam3, na.rm = TRUE)

exam_data$exam1[exam_data$exam1 < 0 | exam_data$exam1 > 100] <- NA
exam_data$exam2[exam_data$exam2 < 0 | exam_data$exam2 > 100] <- NA
exam_data$exam3[exam_data$exam3 < 0 | exam_data$exam3 > 100] <- NA

#View(exam_data)

# Create Loops
for (col in colnames(exam_data)) {
  cat("Summary for column", col, ":\n")
  print(summary(exam_data[[col]]))
  cat("\n")
}

# User Define Functions
normalize_scores <- function(scores) {
  normalized <- (scores - min(scores, na.rm = TRUE)) / (max(scores, na.rm = TRUE) - min(scores, na.rm = TRUE))
  return(normalized)
}

exam_data$normalized_exam1 <- normalize_scores(exam_data$exam1)
exam_data$normalized_exam2 <- normalize_scores(exam_data$exam2)
exam_data$normalized_exam3 <- normalize_scores(exam_data$exam3)

# Apply Family Functions
#exam_data$average_score <- apply(exam_data [, 2:ncol(exam_data)], 1 mean, na.rm = TRUE)
exam_data$average_score <- apply(exam_data[, 2:ncol(exam_data)], 1, mean, na.rm = TRUE)

# Using Sapply
sapply(colnames(exam_data), function(col) {
  cat("Summary for column", col, ":\n")
  print(summary(exam_data[[col]]))
  cat("\n")
})


# Using lappy
#histograms_list <- lappy(exam_data[, 2:ncol(exam_data)], hist,
#                         main = "Histogram", col = "skyblue")

histograms_list <- lapply(exam_data[, 2:ncol(exam_data)], hist, 
                          main = "Histogram", xlab = "Values")


# Using mapply
pass_threshold <- 60
exam_data$pass_exam <- mapply(function(score, threshold) {
  ifelse(score >= threshold, "Pass", "Fail")
}, exam_data[, 2:ncol(exam_data)], threshold = pass_threshold)




