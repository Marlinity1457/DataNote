# Install packages
install.packages("ggplot2")

# Load packages
library('ggplot2')

# SCATTER single plot
ggplot(data, aes(x = column_x, y = column_y)) + # aes = aesthetic
  geom_point() # adding a layer/ type_of_graph, poiny --> scatter

ggplot(data, aes(x = column_x, y = column_y, color = column_col, size = column_size)) + 
  geom_point() +
  scale_x_log10() +    # x-axis on a log scale
  scale_y_log10()      # y-axis on a log scale
  expand_limits(y=0)   # set limits
  ggtitle("Title")

# SCATTER subplots = faceting
ggplot(data, aes(x = column_x, y = column_y, color = column_col, size = column_size)) + 
  geom_point() +
  facet_wrap(~ column_to_facet)


# LINE single plot
ggplot(data, aes(x = column_x, y = column_y, color = column_col, size = column_size)) + 
  geom_line()

# BAR single plot
ggplot(data, aes(x = column_x, y = column_y, color = column_col, size = column_size)) + 
  geom_col()

# HIST single plot
ggplot(data, aes(x = column_x,  color = column_col, size = column_size)) + 
  geom_histogram(binwidth = int, bins = int)

# BOX single plot
ggplot(data, aes(x = column_x, y = column_y, color = column_col, size = column_size)) + 
  geom_boxplot()



