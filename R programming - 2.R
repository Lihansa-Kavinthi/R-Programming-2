# 1)Create a variable for each basic data type in R (numeric, character, logical, integer) and  assign random value.Print each variable.
# Numeric
number <- 3.14
print(paste("Numeric:", num_var))

# Character
character <- "Hello, R!"
print(paste("Character:", char_var))

# Logical
logical <- TRUE
print(paste("Logical:", logical_var))

# Integer
integer <- as.integer(42)
print(paste("Integer:", int_var))

# 2)Create a vector, a list, and a matrix with random values.
vector <- c(2,3,4.5,6,7,85)
print(vector)

list <- list(
  number = 10,
  character = "Random Variable",
  bool = TRUE,
  int = as.integer(7)
)

print(list)

Matrix = matrix(runif(9, min = 1, max = 10), nrow = 3, ncol = 3)
print("Matrix:")
print(Matrix)

# 3)Create a numeric vector called Vector_X containing the numbers from 1 to 40. Print the vector.
Vector_X <- 1:40

print(Vector_X)

# 4)Use the length() function to find the number of elements in the vector.

length(Vector_X)

# 5)Create two numeric vectors, A and B, each containing 10 elements of your choice. 
#Perform some basic arithmetic operations (addition, subtraction, multiplication, division) 
#on these two vectors and display the results.

A = c(2,4,6,34,56,6,7,81,34,10)
B = c(3,45,22,12,2,6,78,34,5,60)

addition = A+B
print(addition)

substraction = A-B
print(substraction)

multiplication = A*B
print(multiplication)

Division = A/B
print(Division)

# 6)Write a simple "if-else" statement that checks if a number is even or odd.
number <- 8

if(number %% 2 == 0){
  print("Even")
} else{
  print("Odd")
}

# 7. Write a "for" loop that iterates over the numeric vector in step 3 above and prints each 
#element.

Vector_X <- 1:20
for (element in Vector_X) {
  print(element)
}

# 8)Write a for loop that iterates over the numbers from 1 to 31 and prints whether each 
#number is even or odd.

for (X in 1:31) {
  if(X %% 2 == 0) {
    print(paste(X, "is even"))
  } else {
    print(paste(X, "is odd"))
  }
}

# 9) Write a "while" loop that starts from 12 and keeps subtracting 1 until the number is less 
#than or equal to -12. 

number = 12
while(number >= -12) {
  print(number)
  number = number-1
}

# 10) Create a 3x3 matrix where each element is a numeric value of your choice.  
#Print the matrix. 

m <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3)
print(m)

# 11)  Create a 4x4 numerical matrix of your choice.  
#Then add a new row to the matrix.  
#Perform element-wise addition and multiplication on the matrix.  
#Print the results. 

mat <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16), nrow = 4, ncol = 4)
print(mat)

new <- c(18,17,19,20)
new_mat <- rbind(mat,new)
print(new_mat)

addition <- new_mat + new_mat
print(addition)

multiplication <- new_mat*new_mat
print(multiplication)

#Part 2
# 1) Load the mtcars dataset
datasets::mtcars

# 2) Display the first six rows of the dataset. 
head(mtcars)

# 3) Find the average mpg (miles per gallon) for all cars. 
avg <- mean(mtcars$mpg)
print(avg)

# 4) Create a new column performance that is the ratio of hp (horsepower) to wt (weight). 
mtcars$performance <- mtcars$hp / mtcars$wt
head(mtcars)

# 5) Sort the data frame by the new performance column in descending order and display the 
# top 5 rows.

sorted_mtcars <- mtcars[order(-mtcars$performance), ]
head(sorted_mtcars, 5)