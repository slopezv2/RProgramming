#Create vectors
vector1 <- c(1,2,3,4,5)
print(vector1)
#Using assign
assign('b', c(1,2,3,4))
print(b)
#Consecutive values
c <- 1:10
print(c)
#Sequence generation
d <- seq(1,100,by=3)
print(d)
#Replicate values
e <- rep(2:4,times=3)
print(e)
#Read values with scan
f <- scan()
#Vector attributes
length(f)
names(b)
typeof(b)
#character vector 
assign('product', c('apple','cookie', 'lemon','pizza'))
is.vector('product')
typeof(product)
length(product)
nchar(product)
#double vector
price <- c(1.3,2,0.5,9)
length(price)
str(price)
#names
price2 <- c('apple'=1.3, 'cookie'=2, 'lemon'= 0.5, 'pizza'=9)
# after it was created
names(price) <- product
#scan
quantity <- scan()
a <- c(8,5,2,4,7)
#sort elements
sort(a)
#order -> position
order(a)
#selecting items
a[2]
#consecutive
a[4:5]
#non consecutive
a[c(2,1)]
#Negative indexes skips an specific item
a[-3]
a[-(2:3)]
#Selecting elements by rule
a[a==2]
a[a > 4]
a[a == 1]
a[a %in% c(2,3)]
price['apple']
#sort order rank
sort(price,decreasing = TRUE)
max(price)
#position for the max element
which.max(price)
rank(price)
#Operating vectors
#Explicit coersion
quantity_double <- 1:5
quantity_char <- as.character(quantity_double)
#Arithmetic operations
price <- c(1.3,2,0.5,9)
full_price <- price
quantity <- c(2,6,3,4)
discount_value <- c(0, 0.15, 0, 0.25)
total_basket_value <- (full_price - (full_price*discount_value))*quantity
total_basket_value
#Logical operations
prices_store_A <- full_price - (full_price * discount_value)
prices_store_A
prices_store_B <- c(1.3, 1.5, 0.75, 7)
prices_store_A == prices_store_B