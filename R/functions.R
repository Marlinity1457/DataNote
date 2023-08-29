# %% SUMMARY OF FUNCTIONS () ---------------------------

# strsplit
# unlist
# tolower
# lapply
# sapply
# vapply

#--- functions which are available ---
# print
# identical
# round
# abs
# sum
# mean
# c
# list
# seq(start,end, by = 1)                Make a sequence
# rep(c(1,2,3,4), times, each)          Replication
# sort(c(1,2,3,4), decreasing = TRUE)   Sorting
# is.*                                  Check datatype
# as.*                                  Change datatype
# unlist                                List to vector
# append                                Append list
# rev                                   Reverse

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
cities <- c("New York","Paris","Amsterdam","London","Cape Town","Vienna")
vapply(cities, first_and_last, character(2))
vapply(cities, first_and_last, character(1)) # Error
vapply(cities, first_and_last, numberic(2)) # Error

# So you have really to think what your function would return.
# More save than sapply


# %% Regular expressions ----------------------------
?regex

cities_l <- tolower(c("New York","Paris","Amsterdam","London","Cape Town","Vienna"))

# grepl() --> boolean
grepl(pattern = "a", x = cities_l)    # Search for expression, incl. a "a"
grepl(pattern = "^a", x = cities_l)   # Search for expression, start with a "a"
grepl(pattern = "a$", x = cities_l)   # Search for expression, ends with a "a"

# grep() --> index
grep(pattern = "a", x = cities_l)
grep(pattern = "^a", x = cities_l)
grep(pattern = "a$", x = cities_l)

# sub() --> replace first found match
sub(pattern = "a", replacement = 'o' , x = cities_l)

# gsub() --> replace every single match
gsub(pattern = "a", replacement = 'o' , x = cities_l)
gsub(pattern = "a|i", replacement = '_' , x = cities_l)
gsub(pattern = "a|i|o", replacement = '_' , x = cities_l)

# Advanced example
awards <- c("Won 1 Oscar.",
            "Won 1 Oscar. Another 9 wins & 24 nominations.",
            "1 win and 2 nominations.",
            "2 wins & 3 nominations.",
            "Nominated for 2 Golden Globes. 1 more win & 2 nominations.",
            "4 wins & 1 nomination.")

sub(".*\\s([0-9]+)\\snomination.*$", "\\1", awards)

# %% Time and dates  ----------------------------

# extra packages : lubridate, zoo, xts

# %Y: 4-digit year (1982)
# %y: 2-digit year (82)
# %m: 2-digit month (01)
# %d: 2-digit day of the month (13)
# %A: weekday (Wednesday)
# %a: abbreviated weekday (Wed)
# %B: month (January)
# %b: abbreviated month (Jan)

today <- Sys.Date()
today

now <- Sys.time()
now

class(today)
class(now)

my_date <- as.Date('1995-05-24')
my_date

my_date <- as.Date('1995-24-05', format = '%Y-%d-%m')
my_date

my_time <- as.POSIXct('1995-05-24 10:01:07')
my_time

add_day <- my_date + 1
diff_day <- my_date - add_day

unclass(my_date) # date to numeric
unclass(my_time) # time to numeric
attr(my_time, 'tzone')



