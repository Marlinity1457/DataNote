# Make dataset
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 1.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
mars <- planets_df[4,]

diameter <- planets_df[,3]
diameter <- planets_df[,"diameter"]
planets_df$diameter # short-cut

# Select columns with condition
rings_vector <- planets_df$rings # False True list
planets_df[rings_vector, "name"] # Show 'name' with True rings
planets_df[rings_vector, ] # Show all columns with True rings

# subset(my_df, subset = some_condition)
subset(planets_df, subset = (diameter < 1))

# Make general name
dataset <- planets_df

# head dataset
head(dataset)

# structure dataset
str(dataset)

# sorting and order
a <- c(100, 10, 1000)
order(a)

az <- c('a', 'F', 'f', 'A', 'z')
order(az)

positions <- order(planets_df$diameter)
planets_df[positions,]