pollutantmean <- function(directory, pollutant, id = 1:332) {
  # Creates an empty data frame
  dat <- data.frame()
  # Create a list of files
  SpecData <- list.files(directory, full.names = TRUE)
  for(i in id) {
    # Loops through the files, rbinding them together
    dat <- rbind(dat, read.csv(SpecData[i])) 
  }
  # Subsets the row that match the pollutant argument
  # and identifies the mean while striping out NAs
  data_mean <- mean(dat[, pollutant], na.rm = TRUE)
  print(data_mean)
}




