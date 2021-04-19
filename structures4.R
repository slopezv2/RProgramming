library("dplyr")
# Ordering data
productsOrdered <- shopping_data %>%
  arrange(desc(price)) %>%
  mutate(price_discounted = price - (price * discount_value)) %>%
  group_by(category, store) %>%
  summarise(sum(quantity))
#######################
# Control flow
product <- 'shirt'
price <- 58
if (price < 100) {
  print(paste('Adding', product, 'to cart'))
} else {
  print(paste('Adding', product, 'to wishlist'))
}
quantity <- c(1,1,2,1,2)
ifelse(quantity == 1,'Yes', 'NO')
price <- 100
if (price < 100){
  print("price < budget")
}else if (price == 100) {
  print("price == budget")
} else {
  print("price > budget")
}
# Any function
if (any(price < 100)){
  print("At least one price is under budget")
}
if (all(price < 100)){
  print("All prices are under the budget")
}
if (price > 50 && price < 100){
  print("50-100")
}
# Switch function
days <- function(x) {
  switch(x,
    Mon = "Monday",
    Tue = "Tuesday",
    Wed = "Thursday",
    Fri = "Friday",
    "Weekend")
}
days("Fri")
days(2)
days(8)
## Second example
quantity <- c(1,2,3,4,5)
average_quantity <- function(quantity, type){
  switch(type,
         arithmetic = mean(quantity),
         geometric = prod(quantity)^(1/length(quantity)))
}
average_quantity(quantity,"arithmetic")
# Loops
cart <- c("apple", "cookie", "lemon")
for (product in cart){
  print(product)
}
# While loop
index <- 1
while (index < 3){
  print (paste('The index value is',index))
  index <- index + 1
}
# Repeat loops
x <- 1
repeat {
  print(x)
  x <- x + 1
  if (x == 10) {
    break
  }
}
# next is available to skip a iteration