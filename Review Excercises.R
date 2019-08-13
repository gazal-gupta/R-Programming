#Review Exercises : Part1
library(dplyr)
library(vcd)
library(psych)

#1.a:  create a vector containing following values : 20,17,99,-100,35,60,70,"apple",19
v1 = c(20,17,99,-100,35,60,70,"apple",19)

#1.b:find out class of this vector. what is the reason for this class to be not 
#integer/numeric?

class(v1)

#1.c: convert the vector to be numeric type

v2 = as.numeric(v1)

#1.d: use R function to find number of elements in the vector
length(v2)

#1.e: find out mean of the values in the vector
mean(v2,na.rm = T)

#1.f: create a subset of the vector which contains all value greater than 20, calculate its mean
v3=v2[v2>20]
v3_mean = mean(v3,na.rm = T)

#1.g: replace all values which are less than 20 or missing with the mean calculates above
is.na(v3)
for(i in 1:length(v3)){
  
  if(v3[i]>20){
    v3[i]=mean(v3,na.rm = T)
    
  }else{ 
    v3[is.na(v3)] = mean(v3,na.rm = T)
  }
  
}
#-------------------------------------------------------------------------------------

#2.a. Create a vector containing all values between 1-100 which are divisible by 3

num_v1 = c(1:100)
num_v2 = num_v1[num_v1 %% 3==0]
num_v2

div = c()
for(i in 1:100){
  if(i %% 3 == 0){
  div[i]=i
  }
}
div[!is.na(div)]
#div = na.omit(div)
#2.b. Create a vector containing all values between 1-100 which are divisible by 5
num_v3 = c(1:100)
num_v4 = num_v3[num_v3 %% 5==0]
num_v4
#2.c. Using the vectors created above, find out the values between 1-100 which are divisible by both 3 and 5
num_v5 = c(1:100)
num_v6 = num_v5[num_v5 %% 3==0 & num_v5 %% 5==0]

#2.d. Combine vectors created in a and b , remove repeating values
num_v7 = c(num_v2,num_v4)
num_v8 = unique(num_v7)

#dup_num_v7 = num_v7[duplicated(num_v7)]
#z = num_v7[!(num_v7 %in% dup_num_v7)]
#print(z)

#2.e. Find out values between 1-100 which are either divisible by 3 or 5 but not by both

setdiff(num_v9, num_v6)

#______________________________________________________________________________________

#3.a. write a for loop to extract names of the character columns in the data 'product_train.csv'
getwd()
product_train = read.csv("product_train.csv",stringsAsFactors = FALSE)
str(product_train)

for (i in 1:ncol(product_train)){
if(class(product_train[,i])=="character"){
 print(names(product_train)[i]) 
}
}
#need to ask*************************************
for (i in 1:ncol(product_train)){
  #v1 = colnames(product_train)
  v1 = colnames(product_train)[i]
  if (class(product_train$v1) =="Character"){
    
    var_cat[i] = names(product_train)[i]
  }
}
var_cat
#need to ask*************************************
product_train[,1]

is.character(product_train$national_inv)
class(product_train$ppap_risk)

#3.b. write a for loop over the names obtained above to print for each of those columns ; frequency of
#categories in them


for (i in 1:ncol(product_train)){
  if(class(product_train[,i])=="character"){
    print(names(product_train[i]))
    print(table(product_train[i]))
  }
}
#---------------------------------------------------------------------------

#4.a. read data 'housing_train.csv' in R , use stringsAsFactors=F

getwd()
housing_train = read.csv("housing_train.csv",stringsAsFactors = FALSE)
head(housing_train)
str(housing_train)

#4.b. How many unique values variable postcode takes
length(unique(housing_train$Postcode))

#4.c. Find out average price across all CouncilAreas
counsil_mean = housing_train %>%
  select(CouncilArea,Price) %>%
  group_by(CouncilArea) %>%
  summarise(Mean_Price = mean(Price) ) 


#4.d. What is the difference in average price between house type h and t
house_mean = housing_train %>%
  select(Price,Type) %>%
  group_by(Type) %>%
  summarise(avg_price = mean(Price))

diff_house = house_mean[1,2] - house_mean[2,2] #OR
diff_house = house_mean$avg_price[1]-house_mean$avg_price[2]



#---------------------------------------------------------------------------
#5.a. read data 'store_train.csv' in R , use stringsAsFactors=F

getwd()
store_train = read.csv("store_train.csv",stringsAsFactors = FALSE)
str(store_train)

#5.b. create a subset of the data which belongs to Supermarket Type1 in area Kennebec County, ME
subset1 = store_train %>%
  select(store_Type,state_alpha,countyname)%>%
  filter(store_Type == "Supermarket Type1" & countyname == "Kennebec County" & state_alpha == "ME") %>%
  
subset1

#5.c. what is the total sales (sum of all sales) of Supermarket Type1 in area Kennebec County, ME
subset2 = store_train %>%
  select(store_Type,state_alpha,countyname,sales0,sales1,sales2,sales3,sales4)%>%
  filter(store_Type == "Supermarket Type1" & countyname == "Kennebec County" & state_alpha == "ME") %>%
  mutate(Sum_Sales = sales0 + sales1 + sales2 + sales3+ sales4) %>%
  summarise(sum(Sum_Sales))

#5.d. Find out frequency of 0/1 (variable store) across Grocery Store.

subset3 = store_train %>%
  select(store_Type,store) %>%
  filter(store_Type == "Grocery Store")

tb = table(subset3$store)
  
#5.e. Convert the result obtained above to %, round off to two decimal digits
round(prop.table(tb),2)



