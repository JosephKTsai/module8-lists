# Exercise 1: Lists

# Create a vector of everything you ate for breakfast

breakfast <- c("eggs", "toast", "bacon")

# Create a vector of everything you ate for lunch

lunch <- c("sandwich", "chips", "cookies")
# Create a list "meals" that has contains your `breakfast` and `lunch`

meals <- list (breakfast = breakfast, lunch = lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner

meals[[3]] <- (dinner = "steak")


# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'

dinner <- meals$dinner


# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)

meals[[5]] <- meals$lunch

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`

early.meals <- list(morning = meals[breakfast], afternoon = meals[lunch])

### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function

# List of how many items I ate for each meal
how.many.items <- lapply(meals, length)

# Write a function that adds pizza to every meal


# Why isn't my code appending "pizza" to every list? 
# Isn't list.of.meals referencing what's passed in, i.e. meals?
# Do I have to reutn it and assign it to meals?
add.pizza.to.every.meal <- function(list.of.meals){
  list.of.meals <- c(list.of.meals, 'pizza')
}

# Add pizza to every meal!
meals <- lapply(meals, add.pizza.to.every.meal)