# %% SUMMARY OF FUNCTIONS () ---------------------------

# strsplit


# %% Help -------------------------------------------

# Example with function: print()
help(print)
?print
args(print)

# %% WRITE FUNCTIONS YOURSELF -----------------------

# Initalize function
function_name <- function(arg){
  
  # body
  output <- 3 * arg
  
  # return value
  return(output)
  
}

# use function
function_name(7)



# %% INSTAL PACKAGES --------------------------------

# Search for a package that is availble
search()

# Step 1: Install package
install.packages('ggvis')
# Step 2: load package
library('ggvis')
# Step 3: Check the available packages
search()

# Check if you have installed a package
require('data.table') # --> warning when you dont have this package yet



