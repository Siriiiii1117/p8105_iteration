#' mean_and_sd
#'
#' @param x 
#'
#' @returns tibble with sample mean and sd

mean_and_sd = function(x){
  
  if(!is.numeric(x)){
    stop("The input x should be numeric")
  }
  
  if(length(x) < 5){
    stop("Only compute mean and sd when the input has 5 or more numbers")
  }
  
  mean_x = mean(x, na.rm = TRUE)
  sd_x = sd(x, na.rm = TRUE)
  
  
  tibble(
    mean = mean_x,
    sd = sd_x
  )
}