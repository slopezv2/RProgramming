#implicit coercion
full_price <- c('1.3',2,0.5, '9')
typeof(full_price)
discount_value <- c(FALSE, 0.15, FALSE, 0.25)
typeof(discount_value)
#Explicit coercion
as.numeric(full_price)
quantity <- c(2,'six', 'three', 4)
as.numeric(quantity)
#sets
a <- 1:5
b <- 4:7
union(a,b)
intersect(a,b)
#difference
setdiff(a,b)
setdiff(b,a)
A <- 1:20
B <- 8:34
all(c(setdiff(A,B), intersect(A,B),setdiff(B,A)) == union(A,B))
#equal comparison
setequal(A,B)
# Comparison
A %in% B
# Factors
products <- c('apple','laptop','cookie', 'orange','phone')
category <- c('groceries','electronics', 'groceries','groceries','electronics')
factor_category <- factor(category)
str(factor_category)
#Changing the default order of levels
factor_category <- factor(category, levels = c('groceries','electronics'))
str(factor_category)
#ordering levels
mass_scale <- factor(c('ml','gr','kg'), ordered = TRUE)
mass_scale
#Using matrices Arrays and lists
#Matrices
quantity_store_A <- c(7,5,3,6,9,4)
quantity_store_B <- c(2,5,6,4,8,3)
#cbind
matr1 = cbind(quantity_store_A,quantity_store_B)
is.matrix(matr1)
#rbind
store_quantity <- rbind(quantity_store_A, quantity_store_B)
store_quantity
quantity_store_C <- c(4,5,2,1,8,3)
store_quantity <- rbind(store_quantity,quantity_store_C)
store_quantity
#Matrix function
matrix_quantity <- matrix(1:18,nrow=3, byrow = TRUE)
#matrix attributes
length(matrix_quantity)
typeof(matrix_quantity)
nrow(store_quantity)
ncol(store_quantity)
dim(store_quantity)
#names to columns
col_names <- c('apple','cookie','lemon','pizza','banana','orange')
colnames(store_quantity) <- col_names
store_quantity
#Calculations on rows and columns
rowSums(store_quantity)
colSums(store_quantity)
#Selecting elements
store_quantity[1, 2]
store_quantity[1, ]
store_quantity[, 2]
store_quantity[, -2]
#Matrix operations
store_quantity
store_quantity + 2
store_quantity + matrix_quantity
store_quantity * matrix_quantity
t(matrix_quantity)
store_quantity %*% t(matrix_quantity) #Matrix multiplication
store_quantity == matrix_quantity
# Identity Matrix
diag(4)