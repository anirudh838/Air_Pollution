complete <- function(directory, id = 1:332) {
  SpecData <- list.files(directory, full.names = TRUE)
  result <- data.frame()
  for(i in id) {
    dat <- read.csv(SpecData[i])
    nobs <- sum(complete.cases(dat))
    result <- rbind(result, data.frame(i, nobs))
  }
  print(result)
}