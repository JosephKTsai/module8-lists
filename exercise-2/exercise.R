# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.
ten.random.numbers <- as.list(c(runif(10, 1, 100)))
print(ten.random.numbers)

# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1
ten.random.numbers <- lapply(ten.random.numbers, round, 0.1)


## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase

sentence <- tolower("hello, my name, Joseph, cannot be capitalized in this sentence because the question asked me to
keep everything lowercase")

# Use the `strsplit()` function to split the sentence into vector of letters.
split.sentence <- strsplit(sentence,"")

# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)
# Self note: It has only 1 element because it only contains that one vector of letters

# Extract the vector of letters from the resulting list
letters.of.sentence <- split.sentence[[1]]

# Use the `unique()` function to get a vector unique letters
unique.letters <- unique(letters.of.sentence)


# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!

# Self note: The filter makes it so that the function will only add to the vector
# if it fits the given conditions. So in this case, only the letters that match are 
# put in the new vector to be counted for length

# Basically, only add to the vector if the filter returns TRUE
CountOccurances <- function(letter.to.count, letters) {
  return(length(letters[letter.to.count == letters]))
}

# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.
CountOccurances('e',sentence)

# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).

# Will sapply just pass in my vector of unique.letters as one of the arguments? 
# How does it know that it's the first Argument? Does it just do it automatically because it's a vector?
letter.frequencies <- as.list(sapply(unique.letters, CountOccurances, letters.of.sentence))

# Print the resulting list of frequencies
print(letter.frequencies)
