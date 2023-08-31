# Install packages
install.packages("gapminder")

# Load packages
library('gapminder')
library('dplyr')

# ---- Functions ---- 
# select        = ...
# filter        = ...
# arrange       = Sort columns
# mutate        = Add new feature
# transmutate   = ...

# count         = ...
# group_by      = ...
# ungroup       = ...
# summarize     = mean, sum, median, min, max

# rename        = ...

# glimpse
# slice_max
# slice_min
# top_n
# lag


# ----- Examples (all verbs can be combined at once in order) -----

glimpse(dataset)

?select_helpers


# SELECT
dataset %>%
  select(column1, column2, column4:column7, new_name = old_name)

dataset %>%
  select(contains('word'), starts_with('letter'), ends_with('letter'), matches('letter'), last_col() )

dataset %>%
  select(-column_to_remove)

# FILTER
dataset %>%
  filter(column1 == value1, column2 = value2)

dataset %>%
  filter(column1 == value1) %>%
  arrange(desc(value2))

dataset %>%
  filter(value1 %in% c('value1', 'value2'))

# INTERMEZZO __ CHANGE OVER TIME
v <- c(1,3,6,14)
sub_the_previous <- lag(v)
diff_consecative <- v - lag(v)


# OTHERS
dataset %>%
  rename(new_name = old_name)

dataset %>%
  arrange(column1, desc(column2)) # default is ascending

dataset %>%
  mutate(column1 = value1/10) # overwrite column

dataset %>%
  mutate(column_name = value1/10) # add column

dataset %>%
  transmute(column1, column2 = column2/10) # select + mutate in once

variable_name <- dataset %>%
  filter(column1 == value1)

dataset %>%
  summarize(column_name1 = mean(column1), column_name2 = sum(column2))

dataset %>%
  count(column1, wt = column2, sort = TRUE)



# GROUP_BY
dataset %>%
  group_by(column1_to_group, column2_to_group) %>%
  summarize(column_name1 = mean(column1), column_name2 = sum(column2))
  ungroup() # Make it able to do other aggregations on the same dataset. 

dataset %>%
  group_by(column1_to_group, column2_to_group) %>%
  slice_max(column1, n = int)
  slice_min(column2, n = int)
  
dataset %>%
  group_by(column1_to_group) %>%
  mutate(new_col = sum(column2))
  






