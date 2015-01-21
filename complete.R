complete <- function(directory, id = 1:332) {
  files <- list.files(directory, full.names = TRUE);
  completeCases <- data.frame();
  
  for (index in id) {
    data <- read.csv(files[index], comment.char = "");
    c <- complete.cases(data);
    naRm <- data[c, ];
    completeCases <- rbind(completeCases, c(index, nrow(naRm)));
  }
  
  names(completeCases) <- c("id", "nobs");
  completeCases;
}