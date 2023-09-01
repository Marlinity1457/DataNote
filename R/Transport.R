
# Package
# utils
# readr
# data.table

# ------------- utils ------------- 

# If you set stringsAsFactors to FALSE, ...
# ... the data frame columns corresponding to strings in your text file will be character.

# read.table
df <- read.table("file.txt", header = TRUE 
           , sep = "/"
           , stringsAsFactors = FALSE
           , col.names = c("col1", "col2", "col3")
           , colClasses = c("character","numeric", "logical"))

# read.csv (read.table wrapper for CSV) 
df <- read.csv('file.csv', header = TRUE, sep = ",", dec = ".")
df <- read.csv2('file.csv', header = TRUE, sep = ",", dec = ",")

# tab-delimited file (read.table wrapper for tab-delimited fles)
df <- read.delim("file.txt", header = TRUE, sep = "\t", dec = ".")
df <- read.delim2("file.txt", header = TRUE, sep = "\t", dec = ",")

# Set path
path <- file.path("~", "datasets", "file.csv")
df <- read.csv(path, header = TRUE, sep = ",")

# Show structure
str(df)

# Select row
row_to_select <- df[which.min(df$column), ]


# ------------- readr ------------- 
# similar to read.table
df <- read_delim("file.txt"
                 , delim = "/"
                 , col_names = c("col1", "col2", "col3", "col4")
                 , col_types = "cc_d" # c = character, d = double/numeric, i = interger, l = logical, _ = skip
                 , col_types = list(fac, int, int) # instead of cdil_
                 , skip = 2, n_nax = 3  )

# similar to read.csv
df <- read_csv("file.csv")  

# similar to read.delim
df <- read_tsv("file.txt")



# ---------- data.table ----------- 
install.packages("data.table")
library(data.table)

fread("file.csv"
      , drop = 2:4
      , select = c(1, 5)
      , drop = c("b", "c", "d")
      , select = c("a", "e"))

plot(x = df$col1, y = df$col2)


# ---------- data.table ----------- 






