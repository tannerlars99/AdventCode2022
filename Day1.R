rows <- read.delim("C:/Users/tanne/OneDrive/Stuff/R/AdventofCode/AdventDay1.txt", 
                   header = FALSE, blank.lines.skip = FALSE)

# Part 1
caloriesPerElf <- array()
calorieCounter <- 0
for (item in rows$V1) {
  # Do something cool  
  if (is.na(item) == TRUE) {
    caloriesPerElf <<- append(caloriesPerElf, calorieCounter)
    calorieCounter <<- 0
    next
  }
  else {
    calorieCounter <<- calorieCounter + item 
  }
  lastRow <- item == (rows$V1[length(rows$V1)])
  if (lastRow) {
    calorieCounter <<- calorieCounter + item
    caloriesPerElf <<- append(caloriesPerElf, calorieCounter)
  }
}
sort(caloriesPerElf, decreasing = TRUE)[1]
# Part 2
sum(sort(caloriesPerElf, decreasing = TRUE)[1:3])
