# Writing your own functions
function_name <- function(inputs) {
  output_value <- do_something(inputs)
  return(output_value)
}

# return means sending an output back that called this function

square <- function(x) {
  result <- x^2
  return(result)
}
square(3)
y <- 4
square(y)
square(y+1)

nth_power <- function(x,n) {
  result <- x^n
  return(result)
}
nth_power(3,2)
nth_power(3,4)

gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}
gt_threshold(c(1,2,4),3)

# Exercises
Label the five parts of this function:
  first_and_last <- function(s) {
    first_char <- substr(s, 1, 1)
    last_char <- substr(s, nchar(s), 1)
    result <- paste(first_char, last_char)
    return(result)
  }
# function_name <- first_and_last
# inputs <- s
# output_value <- result
# do_something <- paste()
# inputs <- first_char, last_char

#Match the function bodies on the left with the name that describes what they’re doing on the right.
function(x) {
  result <- x + 1
  return(result)
}
function(a) {
  result <- a * 2
  return(result)
}
function(a, b) {
  c_squared <- a^2 + b^2
  result <- sqrt(c_squared)
  return(result)
}
double (2)
hypotenuse_length (3)
increment (1)

# Write a function that turns a vector into a palindrome.
# For example, it should turn 1 2 3 into 1 2 3 3 2 1.
# Hint:you’ll have to use a function called rev().
# Choose a short but descriptive name for your function.

to_palindrome <- function(x) {
  result <- rev(x)
  return(result)
}

#How to execute functions
gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}

temperature <- c(18.1,29.9,22.3,25.2)
gt_threshold(temperature,25)

# Dig into with debugger browswer()
gt_threshold <- function(x, threshold) {
  # trigger the debugger
  browser()
  is_gt <- x > threshold
  result <- sum(is_gt)
  return(result)
}
gt_threshold(temperature,25)

# changing parameter values in the function will not change
# original input
gt_threshold <- function(x, threshold) {
  is_gt <- x > threshold
  result <- sum(is_gt)
  x <- "new x"
  return(result)
}
gt_threshold(temperature,25)

# Exercises
# What value does the following code yield?
# Value returned is 11
# How could you change fish_mass so the code yields 12 instead?
# change fish_mass to 6
# How could you change the body of the function so the code yields 12?
# change growth <- 3 + 0.2 * temp instead of growth <- 2 + 0.2 * temp
  fish_mass <- 5
temperature <- 20
fish_growth <- function(mass, temp) {
  growth <- 2 + 0.2 * temp
  mass <- mass + growth

  return(mass)
}
fish_growth(fish_mass, temperature)

# In your own words, why does running this code generate an error?
# there's an error because it only returned part of the body(volume)
# not all of it. It didn't include "area".
calc_volume <- function(height, width, depth) {
  area <- height * width
  volume <- area * depth
  return(volume)
}
vol <- calc_volume(3, 5, 1)
area

# Default and named parameters

# Exercises

# R represents missing data with the value NA.
# Say you’re doing an experiment and you miss the second observation.
# In R you can write that as c(1, NA, 3, 4).
# Most summary functions, like mean(), max(), and median(),
# have a parameter called na.rm. What does this parameter do?
# this parameter decides whether to remove the NA value
# What is its default value?
# Its default value FALSE because typically its result will be NA.
# How would you get the maximum value of the vector c(1, NA, 3, 4)?
c(1,NA,3,4)

max(1,NA,3,4)

