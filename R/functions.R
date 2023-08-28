# %% SUMMARY OF FUNCTIONS () ---------------------------

# strsplit
# unlist
# lapply
# sapply
# vapply

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

# Example
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}
print(interpret(linkedin[1]))
print(interpret(facebook[2]))

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


# %% Lapply -----------------------------------------
# write function to apply on all elements (it alwasys returns a list)

# lapply(object, function)
cities <- c("New York","Paris","Amsterdam","London","Cape Town","Vienna")
lapply(cities, nchar)

# unlist the lapply list
unlist(lapply(cities, nchar))

# structure of all 
str(lapply(cities, nchar))

# Beholding the keynames
my_list <- list(pop = '35978', boroughs = c('one','two','three'), capital = TRUE)
lapply(my_list, class)

# Can apply arguments in lapply besides the input values
oil_prices <- list(2.52, 2.63, 2.12, 2.22, 2.25, 2.64)
multiply <- function(x, factor){
  x * factor
}
times3 <- lapply(oil_prices, multiply, factor = 3)
unlist(times3)

# Anonymous function
# split_low has been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)
names <- lapply(split_low, function(x) {x[1]} )
years <- lapply(split_low, function(x) {x[2]} )



# %% sapply --------(simplify lapply) ----------------
# Only usefull if there is a common way to represent the results
# AND sapply() does not simplify the list of NULL's.

cities <- c("New York","Paris","Amsterdam","London","Cape Town","Vienna")
sapply(cities, nchar)
sapply(cities, nchar, USE.NAMES = FALSE)

# Example --> makes a matrix
first_and_last <- function(name){
  name <- gsub(" ","", name)
  letters <- strsplit(name, split = "")[[1]]
  c(first = min(letters), last = max(letters))
}
sapply(cities, first_and_last)


# %% vapply -----------------------------------------



