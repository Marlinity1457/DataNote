# Install packages
install.packages("gapminder")

# Load packages
library('gapminder')
library('dplyr')

# ---- Functions ---- 
# filter
# arrange     = Sort columns
# mutate      = Add new feature
# summarize   = mean, sum, median, min, max
# group_by
# select
# glimpse
# ungroup
# slice_max
# top_n


# ----- Examples (all verbs can be combined at once in order) -----

glimpse(dataset)

dataset %>%
  select(column1, column2)

dataset %>%
  filter(column1 == value1, column2 = value2)

dataset %>%
  arrange(column1, desc(column2)) # default is ascending

dataset %>%
  filter(column1 == value1) %>%
  arrange(desc(value2))

dataset %>%
  mutate(column1 = value1/10) # overwrite column

dataset %>%
  mutate(column_name = value1/10) # add column

variable_name <- dataset %>%
  filter(column1 == value1)

dataset %>%
  summarize(column_name1 = mean(column1), column_name2 = sum(column2))

dataset %>%
  group_by(column1_to_group, column2_to_group) %>%
  summarize(column_name1 = mean(column1), column_name2 = sum(column2))
  ungroup() # Make it able to do other aggregations on the same dataset. 

  dataset %>%
    group_by(column1_to_group, column2_to_group) %>%
    slice_max(column1, n = int)
    slice_min(column2, n = int)
  
dataset %>%
  count(column1, wt = column2, sort = TRUE)






