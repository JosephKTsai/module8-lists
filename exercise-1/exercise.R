# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
my.breakfast <- c("eggs", "toast", "bacon")

# Create a vector of everything you ate for lunch
my.lunch <- c("sandwich", "chips", "cookies")

# Create a list "meals" that has contains your `breakfast` and `lunch`
meals <- list (breakfast = my.breakfast, lunch = my.lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
meals$dinner <- c('steak', 'fries')


# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner


# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)
meals[[5]] <- meals[['lunch']]

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`
early.meals <- meals[1:2]

### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function

# List of how many items I ate for each meal
how.many.items <- lapply(meals, length)

# Write a function that adds pizza to every meal
# Creates a new list that adds pizza to the end of each element in the list
add.pizza.to.every.meal <- function(list.of.meals){
  list.of.meals <- c(list.of.meals, 'pizza')
}

# Add pizza to every meal!
# Need to reassign the output to means because it has created new vectors 
meals <- lapply(meals, add.pizza.to.every.meal)