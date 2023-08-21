# %% SUMMARY OF FUNCTIONS () ---------------------------

# nchar
# length
# paste

# %% SUMMARY OF LOOPS () ---------------------------

# %% IF-LOOP ----

if(condition) {
 expression
} else if (condition) {
 expression
} else {
 expression
}


# %% WHILE LOOP ---- print first increment for which the condition fails

while(condition){
  expression
  increment <- increment + 1
} 

# %% FOR LOOP ---- 

for (var in seq) {
  expression
}

# for var in variable     --> easy to read, but not access to looping index
# for 1 in 1:length(var)  --> harder to read and write, but more versatile

# Example
cities <- c("New York","Paris","Amsterdam","London","Cape Town","Vienna")
for (i in 1:length(cities)){
  print(paste(cities[i], "is on position", i ,"in the cities vector"))
}