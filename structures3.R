#Arrays
quantity_store_A <- c(7,5,3,6,9,4)
quantity_store_B <- c(2,5,6,4,8,3)
quantity_store_C <- c(4,5,2,1,8,3)
store_quantity <- rbind(quantity_store_A, quantity_store_B, quantity_store_C)
quantity_day_1 <- store_quantity
quantity_day_2 <- store_quantity * 2
shopping_data <- array(c(quantity_day_1,quantity_day_2),dim = c(3,6,2))
shopping_data
#arrray attributes
length(shopping_data)
typeof(shopping_data)
dim(shopping_data)
# Selecting elements
shopping_data[, , 1]
shopping_data[-2,1,2]
#lists
quantity <- list(quantity_store_A,quantity_store_B)
quantity
basket_details <- list(store='store A',product = c('apple','cookie'),price=c(2.3,2))
basket_details[[1]]
basket_details[['product']]
basket_details$product
basket_details[[3]][2]
#Dataframes
product <- c('apple','cookie','phone','lemon')
category <- c('groceries','groceries','electronics','groceries')
price <- c(1.3,2,500,0.5)
quantity <- c(4,6,1,3)
discount <- c(FALSE,TRUE,TRUE,TRUE)
discount_value <- c(0,0.25,0.10,0.15)
shopping_data <- data.frame(product,category,price,quantity,discount,discount_value, budget=c(200,150,3000,240), stringsAsFactors = FALSE)
View(shopping_data)#Visualization
#looking at the data
names(shopping_data)
dim(shopping_data)
head(shopping_data)
tail(shopping_data)
head(shopping_data, n = 1)
tail(shopping_data, n = 1)
str(shopping_data)
shopping_data <- data.frame(product,category,price,quantity,discount,discount_value, budget=c(200,150,3000,240), stringsAsFactors = FALSE)
typeof(shopping_data)
class(shopping_data)
summary(shopping_data)
#Manipulating Dataframes
print(shopping_data)
shopping_data[c(1:3),1]
shopping_data[,3]
shopping_data[1,3]

shopping_data$product[1:3]
shopping_data$price
shopping_data$price[1]
#single brackets produce dataframes, double brackets produce vectors
is.vector(shopping_data[,1])
is.vector(shopping_data[[1]])
is.data.frame(shopping_data[1])
#adding a new column  using list format
shopping_data$store <- c('A','B','B','A')
# Based on matrix columns
price_discounted <- price - (price*discount_value)
shopping_data <- cbind(shopping_data,price_discounted)
shopping_data
#adding a new row
new_product <- data.frame(product= 'cake', category='groceries',price=10, quantity=1,
                          discount = FALSE, discount_value=0, budget=500, store= 'A',
                          price_discounted = 10)
shopping_data <- rbind(shopping_data,new_product)
shopping_data
# Selecting columns
select(shopping_data,product,price)