# %% SUMMARY OF FUNCTIONS () ---------------------------

# nchar
# length
# paste
# nrow
# ncol
# break --
# next --

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

# The break statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
# The next statement skips the remainder of the code in the loop, but continues the iteration.

# Example
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }

  if (li > 16){
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  if (li < 5){
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}