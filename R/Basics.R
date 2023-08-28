# Run all: Ctrl + Shift + Enter
# Run line: Ctrl + Enter
# Run line: Alt + Enter


# %% SUMMARY OF FUNCTIONS () ---------------------------

# c
# list
# matrix

# class
# sum
# mean
# colnames
# rownames
# rowSums
# colSums
# cbind
# rbind
# factors
# levels
# summary
# is.numeric
# identical

# %% MATHEMATICAL NOTATIONS ----------------------------

# Addition
5 + 5 

# Subtraction
5 - 5 

# Multiplication
3 * 5

# Division
(5 + 5) / 2 

# Exponentiation
2^5

# Modulo
28 %% 6


# %% VARIABLES -----------------------------------------

# Assign the value to a variable
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE

# Print out the value of the variable x
my_numeric
my_character
my_logical

# Check class
class(my_numeric)
class(my_character)
class(my_logical)


# %% VECTORS ------------------------------------------

# Vectors
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

# Vector names
poker_vector <- c(140, -50, 20, -120, 240)
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Vector sum
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)
total_vector <- A_vector + B_vector
total_A <- sum(A_vector)
total_B <- sum(B_vector)

# Slicing
poker_wednesday <- poker_vector[3]
poker_midweek1 <- poker_vector[c(2,3,4)]
poker_midweek2 <- poker_vector[2:4]
poker_start <- poker_vector[c("Monday","Tuesday","Wednesday")]

# Selection
selection_vector <- poker_vector > 0
poker_winning_days <- poker_vector[selection_vector]

# Stats
mean(poker_start)


# %% MATRIxES ----------------------------------------

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow = TRUE, nrow = 3)

# Construct star_wars_matrix
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
box_office <- c(new_hope, empire_strikes, return_jedi)

# Option 1: Adding column and row names
star_wars_matrix_1 <- matrix(box_office, byrow = TRUE, nrow = 3)

region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

colnames(star_wars_matrix_1) <- region
rownames(star_wars_matrix_1) <- titles

# Option 2: Adding column and row names
star_wars_matrix_2 <- matrix(box_office
                           , byrow = TRUE
                           , nrow = 3
                           , dimnames = list(titles, region))

# Show results
star_wars_matrix_1
star_wars_matrix_2

# Stats
worldwide_vector <- rowSums(star_wars_matrix_1)
total_revenue_vector <- colSums(star_wars_matrix_1)

# Bind COLUMNS in a single matrix
all_wars_cmatrix <- cbind(star_wars_matrix_1, worldwide_vector)

# Bind ROWS in a single matrix
all_wars_rmatrix <- rbind(star_wars_matrix_1, star_wars_matrix_2)

# Slicing
non_us_all <- all_wars_rmatrix[,2] # Second column
non_us_some <- all_wars_rmatrix[1:2, 2] # First two rows, of the second column

# Stats
mean(non_us_some)

# Mathematical: Multiplication
twice_non_us_some <- non_us_some *2 # mutilpy evey element by each relating element
# %*% standard matrix multiplication

# Mathematical: Division (as example)
halfe_non_us_some <- non_us_some / 2 


# %% VARIATIONS BY FACTORS, LEVELS, ... ----------------------------------------


# Convert sex_vector to a factor
sex_vector <- c("Male", "Female", "Female", "Male", "Male")
factor_sex_vector <- factor(sex_vector)
factor_sex_vector

# Temperature (indicate vector is of ORDINAL type, levels give you the values in the correct order)
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector
temp_day1 = factor_temperature_vector[1]
temp_day4 = factor_temperature_vector[4]
temp_day1 > temp_day4 # Was day 1 warmer than day 4?

# Change variable names of the whole vector
# Code to build factor_survey_vector
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector) # values: F and M
levels(factor_survey_vector) <- c("Female", "Male") # F becomes Female, M becomes Male
factor_survey_vector

# Generate summary of a vector -> gives length, class and mode.
summary(survey_vector)

# Generate summary of a factor -> gives number of observations for each factor
summary(factor_survey_vector)


# %% LISTS ------------------------------------------------------------------

# Make list of vector and matix
my_vector <- 1:10 
my_matrix <- matrix(1:9, ncol = 3)
my_df <- mtcars[1:10,]

my_list <- list(my_vector, my_matrix, my_df) # create list
names(my_list) <- c('vec','mat','my_df') # give names to lists in my_list

my_list2 <- list(vec = my_vector, mat = my_matrix, my_df = my_df) # all at once

# Selecting
my_list[1] # only my_vector
my_list['vec'] # only my_vector
my_list$vec
my_list$vec[2]


# %% RELATIONAL OPERATORS ----------------------------------------------------

TRUE == TRUE
'hello' != 'goodbye'
2 != 22
70 > 7
70 >= 7
'hello' > 'goodbye' # Alphabetical order
TRUE > FALSE # 1 > 0

link <- c(16,1,9,6,2,17,14)
combi <- c(7,4,5,14,21,28,3)
link > 7
link <= combi # value comparison one by one
identical(link, combi)

combi > 5 & combi < 15
combi > 15 | combi < 5

c(TRUE, TRUE, FALSE) & c(TRUE, FALSE, FALSE)
c(TRUE, TRUE, FALSE) && c(TRUE, FALSE, FALSE)

c(TRUE, TRUE, FALSE) | c(TRUE, FALSE, FALSE)
c(TRUE, TRUE, FALSE) || c(TRUE, FALSE, FALSE)
 
!TRUE
is.numeric(5) # TRUE
!is.numeric('hello') # TRUE

