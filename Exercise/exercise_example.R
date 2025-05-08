### Example

## Simulating data with a for loop and conditional statements

data_simulator <- function(num_observations) {
  
  sim_data <- vector(mode = "double", length = num_observations)
  
  for (n in seq_along(sim_data)){
    
    # the %% (modulo) operator returns the remainder from dividing the left hand side
    # by the right hand side. So, if n %% 2 returns 0, then n is even, otherwise
    # n is odd (the remainder is > 0)
    if (n %% 2 > 0) {
      
      sim_data[n] <- rnorm(n = 1, mean = 1000, sd = 100)
      
    } else {
      
      sim_data[n] <- runif(n = 1, min = -10, max = -1)
      
    }
  }
  
  return(sim_data)
  
}

data_simulator(10)
