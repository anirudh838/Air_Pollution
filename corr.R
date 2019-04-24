corr <- function(directory, threshold = 0) {
  SpecData <- list.files(directory, full.names = TRUE)
  corr_vect <- NULL
  for(i in 1:332) {
    dat <- read.csv(SpecData[i])
    data <- dat[complete.cases(dat),]
    print(nrow(data))
    if (nrow(data) > threshold) {
      corr_vect <- c(corr_vect, cor(data[,"sulfate"], data[, "nitrate"]))
    }
  }
  return(corr_vect)
}