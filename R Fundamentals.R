
#this is how to write comments
# hash to comment out the lines, no multiple line commenting, however
#you can select multiple lines and use the shortcut cut to comment out
# shortcut for commenting : ctrl + shift + c
## ------------------------------------------------------------------------
## R is case sensitive

x
x=5

X="something"



## ------------------------------------------------------------------------
## naming rules
1.more=2.34
one.more=2.34
onemoreobject=2.34
one.more.object=2.34

# you can use dots(.) and underscore ( _ )
# you cannot have other special characters in the name
# you can use numbers also in object , BUT not at the begining

## ------------------------------------------------------------------------


#objects can be reassigned on the fly

x="Hadley Wickham"

# removing objects from environment

rm(one.more,one.more.object,onemoreobject)


## ------------------------------------------------------------------------
## logical values true and false, that has to be in caps
x=FALSE
x

x=TRUE


## ------------------------------------------------------------------------
x=F
x

## shortcut for clearing console : ctrl+l
## ------------------------------------------------------------------------
# now we will be looking at class, type of the object
x="bunny"
y=F
z=4.5
class(x)
class(y)
class(z)


## ------------------------------------------------------------------------
# anything within quotes is character for R

v1="23.45"

class(v1)
# you cannot do numeric operation on this

v1+2

## ------------------------------------------------------------------------
# change the type, given it is possible to convert the number

v2=as.numeric(v1)

#function will not change the input, only the output gets changed
class(v2)
class(v1)

v2+2


## ------------------------------------------------------------------------

v1="King"
class(v1)

#hit tab for autocompletion

v2=as.numeric(v1)
v2
class(v2)

## ------------------------------------------------------------------------
# opening documentation for functions in R

?sum


## ------------------------------------------------------------------------
?smu

## ------------------------------------------------------------------------
??smu

## ------------------------------------------------------------------------
# Numeric Operations

x=2
y=8

x+y
x-y
x*y
x/y

## ------------------------------------------------------------------------
x^y
x**y

## ------------------------------------------------------------------------
z=(x+y-(x/y))**(x/10)

## ------------------------------------------------------------------------
#mathematical functions

tan(10)

log(2^14,10)
log(2^14)
log(2^14,2)


## ------------------------------------------------------------------------
## specific functions in R for string operations

x="Sachin"
y="Tendulkar"
z="Cricket"

paste(x,y,z,sep="")

?paste


## ------------------------------------------------------------------------
name=paste(x,y)

#sep controls how to concatenate
profile=paste(name,z,sep=":")
profile

## ------------------------------------------------------------------------
paste(x,y,z,sep="$")
paste(x,y,z,sep="%2")

#paste0 : by default separator is empty string
paste0(x,y,z)

## ------------------------------------------------------------------------

address="1612-Lone Tower-Mumbai"
newAd=sub("-","/",address)


## ------------------------------------------------------------------------
newAd

## ------------------------------------------------------------------------
newAd=sub("-","/",newAd)
newAd

## ------------------------------------------------------------------------
newAd1=gsub("-","/",address)
newAd1

newAd1=gsub("e","skjdasnd",address)
newAd1



## ------------------------------------------------------------------------
ip="192.168.23.134:219"            
abc=substr(ip,5,nchar(ip))
abc



## ------------------------------------------------------------------------
x="Sa chin-$. ?/"
nchar(x)


## ------------------------------------------------------------------------
# Logical Operations, Writing Conditions

x=7
y=9

x>y
x<y
x==y
x!=y
x>=y
x<=y

## ------------------------------------------------------------------------
z=x>y
z

## ------------------------------------------------------------------------
x=10
x>=1 & x<=19

y="SAchin"
y=="Sachin" | y=="SACHIN"
y=="SAchin" | y=="SACHIN"

## ------------------------------------------------------------------------
# writing a vector, holding multiple values

x=c(2,4,89,-10,5,6)

x=c(2,3,4,"a")
x


# if one of the element is character, the entire vector is of character type
x=c(2,4,89,-10,67,73)
## ------------------------------------------------------------------------
class(x)
# vectors cannot contain mixed values, like both numeric and charater
## ------------------------------------------------------------------------

# Accessing vector elements
x
x[3]
x[-3]


# access multiple values
#x[1,2,5] : this does not work

## ------------------------------------------------------------------------
p=c(1,2,5)


x[p]

x[c(1,2,5)]

x[-p]


## ------------------------------------------------------------------------
x[c(3,4,2,2,10,3)]

## ------------------------------------------------------------------------
x[c(2,3,8,10,5,2,2,4,9)]


# they need not be in order
# need not be unique
# need not be less than the length of vector

## ------------------------------------------------------------------------
x
x[-2]

## ------------------------------------------------------------------------
x[-c(2,3,6)]

x[c(2,3,-1)]


## ------------------------------------------------------------------------
# conditional access of vector

x
x>4

L=x>4
L

# compare with each element of x, wherever it is true,it gives the value
## ------------------------------------------------------------------------
x[L]

## ------------------------------------------------------------------------
x[x>4]
# within square brackets you can pass condition also

## ------------------------------------------------------------------------
x
L
!L
x[!L]
x[!(x>4)]
# reverse the condition

y=c("a","a","b","c","d","b","a")
x=c(34,56,12,-90,34,4,8)

# conditions can be based on another vector

x[y=='a']
y[x%%3==0]

## ------------------------------------------------------------------------
#Creating vectors with handy functions and operators

# a:b creates a sequence from a to b intremental or decremental

x=2:10
x

4:-1
-5:5

2.3:7.9

## ------------------------------------------------------------------------

x=seq(1,5,by=0.3)
# 5 may or may not be included
## ------------------------------------------------------------------------
x

x=seq(5,1,by=-0.3)
x

x=seq(1,5,by=-0.3)
x

## ------------------------------------------------------------------------
x=seq(1,10,length=21)
x
#creates AP
# start and stop are included when length option is used
## ------------------------------------------------------------------------
x=1:5
y=seq(2,3,length=5)

z=c(x,y,2,3,6)


## ------------------------------------------------------------------------
## what to repeat and how many times
rep(2,10)
rep("a",5)


## ------------------------------------------------------------------------
rep(c(1,5,6),4)


## ------------------------------------------------------------------------
rep(c("a","b","c","b"),4)


#vector repeated 4 times


rep(c("a","c","b"),4)

rep(c("a","c","b"),each=4)

# if each=4 it repeats individual elements 4 times


## ------------------------------------------------------------------------
# vector operations

x=1:10
y=seq(3,13,length=10)
x+y
x*y
x-y
x/y


# operation is done element by element(on each element) on
#vectors and the result is also vector
## ------------------------------------------------------------------------
log(x)

2**x

## ------------------------------------------------------------------------
paste0(1,"a")

x=1:10

y=rep("a",10)

paste0(x,y)



#concatenation will happen on individual elements
## ------------------------------------------------------------------------
# collapse option in paste function
z=paste(y,x,sep="")
paste(z,collapse="+")
# collapses into a single string using "+" as separator


## ------------------------------------------------------------------------
z
f=round(runif(10),2)
f
#generate 10 numbers between 0 to 1 with two decimal places

paste(f,z,sep="*",collapse="+")

## ------------------------------------------------------------------------

# vector operations when lengths do not match
x=1:11
y=c(1,2,3)



## ------------------------------------------------------------------------
#you'll get a result but with a warning for length mismatch
# However you will not get this warning if smaller vector's length is
# a multiple of larger vector

x+y

## ------------------------------------------------------------------------
x=c("a","b")
y=1:10
z=c("c","d")
paste0(x,y,z)




## ------------------------------------------------------------------------
# Special utility functions for vectors

x=c("k","j","$","1","f")
y=letters

match(x,y)

?letters

#####
x=c("k","j","$","1","F")
a=letters
b=LETTERS
c=c(a,b)

match(x,c)
#it is case sensitive
#####

## ------------------------------------------------------------------------

x %in% y

## ------------------------------------------------------------------------

100 %% 32
30 %% 12
30 %% 15


## ------------------------------------------------------------------------
x=56:78
x
which(x%%5==0)


# gives the indices where the condition is true
## ------------------------------------------------------------------------
##exercise
x=runif(40,1,100)#from 1 to 100, 40 numbers
x[which(x%%2!=0)]

## ------------------------------------------------------------------------
x=c(3,4,5,-10,1,2,0)
sort(x)
y=c("art","Ant","Bat")
sort(y)#sorts in dictionary order

## ------------------------------------------------------------------------
sort(x,decreasing = T)
sort(y,decreasing = T)


## ------------------------------------------------------------------------
rev(y)
rev(x)

## ------------------------------------------------------------------------
x=1:100
sample(x,3)
sample(x,3)



## ------------------------------------------------------------------------
# reproducible
set.seed(2)
sample(x,3)

## ------------------------------------------------------------------------
x=1:10

sample(x,7)

sample(x,7,replace=T)


## ------------------------------------------------------------------------
sample(c("a","b","c"),10,replace=T)

# a => machine is alright
# b => machine has failed
# c => it needs repairs

## ------------------------------------------------------------------------
x=sample(c("a","b","c"),1000,replace=T,prob=c(0.6,.1,.3))
x
table(x)

sample(c(1,2,3,4),2,prob=c(0.5,.3,.1))

## ------------------------------------------------------------------------
unique(x)
sum(1:10)

# finding missing values, operations with missing value

is.na(c(1,2,3,NA,NA,3,4,5))

x=c(1,2,3,NA,NA,3,4,5)

sum(is.na(x))

sum(c(1,2,3,NA,NA,3,4,5))
sum(c(1,2,3,NA,NA,3,4,5),na.rm=T)

#a vector can not be of mixed type,it is unidimensional
## ------------------------------------------------------------------------
# list are versatile, it can store vector,dataframe etc

x=sample(1:100,10)
y=sample(c("a","b","c"),6,replace=T)
z=4.56

list1=list(x,y,z)
list1

## ------------------------------------------------------------------------
list1[[2]]

## ------------------------------------------------------------------------
v=list1[[2]]
v[3]


list1[[2]][3]

# 
# list1[[2]]

list1[[2]][3]
list1[2][[1]]#single bracket will give the output as list

## ------------------------------------------------------------------------
list2=list(a=x,b=y,c=z)
list2

## ------------------------------------------------------------------------
list2$b
list2$b[3]

## ------------------------------------------------------------------------
set.seed(2)
x=round(runif(30),2)
y=sample(c("a","b","c"),30,replace = T)
d=data.frame(x,y)
d

## ------------------------------------------------------------------------
View(d)

## ------------------------------------------------------------------------
names(d)
colnames(d)
# names is a generic function 
## ------------------------------------------------------------------------
names(d)=c("num","char")
names(d)

## ------------------------------------------------------------------------

rownames(d)
rownames(d)=paste0("R",1:30)
rownames(d)

## ------------------------------------------------------------------------
dim(d)
nrow(d)
ncol(d)

## ------------------------------------------------------------------------
str(d)

## ------------------------------------------------------------------------
d$char=as.character(d$char)
str(d)


## ------------------------------------------------------------------------
data(mtcars)
d1=mtcars
dim(d1)

## ------------------------------------------------------------------------
d1[3,6]

## ------------------------------------------------------------------------
#3rd row , all columns
d1[3,]
class(d1[3,])
# all rows, 6 th colunmn
d1[,6]
class(d1[,6])

# multiple rows, multiple column

d1[c(3,4,20),c(1,4,6)]


d1[-(3:17),-c(1,4,6,7)]

d1[d1$mpg>20,]


d1[d1$mpg>20 & d1$am==1,]


# Selecting column by their names

d1[,c("wt","mpg")]

# Excluding columns by their names [ this is a little tricky because simple negative sign doesn't work]

d1[,!(names(d1) %in% c("wt","mpg"))]

## ------------------------------------------------------------------------
d1[order(d1$vs,d1$wt),c("vs","wt","mpg","gear")]


## ------------------------------------------------------------------------
d1[order(d1$vs,-d1$wt),c("vs","wt","mpg","gear")]

##

d2=d1[,c("mpg","cyl","am","gear")]

## adding a new column

d2$color=40

d2$rainbow=sample(1:100,32)

d2[,"expense"]=d2$color+d2$rainbow

d2[,8]=d2$mpg/d2$cyl

d2$mpg_capped=ifelse(d2$mpg>15,15,d2$mpg)

#merging dataframes
#merging done by ID 

## 
## ------------------------------------------------------------------------
##Explaination of joins: left ,right, inner, full
library(dplyr)
df1 = data.frame(a=c(1,1,1,2,2,3),
                 b=c("a","b","c","a","b","c"),
                 Product=c(rep("Toaster",3),rep("Radio",3)),
                 c1=runif(6),stringsAsFactors = F)

df2 = data.frame(c=c(1,1,2,2),
                 d=c("a","c","b","d"),
                 State=c(rep("Alabama",2),rep("Ohio",2)),
                 c3=sample(letters,4),stringsAsFactors = F)

inner=inner_join(df1,df2,by=c("a"="c","b"="d"))
inner



left=left_join(df1,df2,by="CustomerId")
left

right=right_join(df1,df2,by="CustomerId")
right

full=full_join(df1,df2,by="CustomerId")
full

semi=semi_join(df1,df2,by="CustomerId")
semi

anti=anti_join(df1,df2,by="CustomerId")
anti


# now reverse the data frame and look at the result
## ------------------------------------------------------------------------
inner

## ------------------------------------------------------------------------
left

## ------------------------------------------------------------------------
right

## ------------------------------------------------------------------------
full

## ------------------------------------------------------------------------
semi

## ------------------------------------------------------------------------
anti

## ------------------------------------------------------------------------

x=c("delhi","pune","mumbai",
    "bangalore","hyderabad","lucknow","chennai")

print(nchar(x[1]))
print(nchar(x[2]))
print(nchar(x[3]))
print(nchar(x[4]))
print(nchar(x[5]))
print(nchar(x[6]))
print(nchar(x[7]))

for(i in c(1,2,3,4,5,6,7)){
  print(nchar(x[i]))
}

# you can name your index whatever you want
# value vector can be any vector 
# its not necessary that we make use of index in the body of the for loop

for(city in x){
  print('hello')
}

ctr=0

while(ctr<10){
  print(ctr)
  
  if(ctr<5){
    print('smaller')
  }else{
    print('greater')
  }
  ctr=ctr+1
}

x=3

if(x<4){
  x=x+1
}

x=c(3,4,10,56,78,92,0,-10)
power=2

x=x**power
sum(x)
sum(x>50)

first_shopping=function(veg=1:10,carrot=2){
  veg=veg**carrot
  
  a=sum(veg)
  b=sum(veg>50)
  
  abc=list("sum"=a,"grt"=b)
  
  return(abc)
}

t=first_shopping(1:10,5)
t$sum
t$grt

first_shopping()
first_shopping(2:9)
first_shopping(2:9,3)
first_shopping(carrot=4,veg=4:40)

##### 
# its not always neccessary to write a for loop, use vector operations
x=sample(1:100,20)

for(i in 1:length(x)){
  
  if(x[i]%%5==0){
    x[i]=-999
  }
}

x[x%%5==0]=-999


## ------------------------------------------------------------------------
# writing efficient for loops

x=1:9

## ------------------------------------------------------------------------
matrix(x,3,4)

## ------------------------------------------------------------------------
n=100000

myvec=sample(1:10, n*9, replace=TRUE)

X = as.data.frame(matrix(myvec, n, 9))



## ------------------------------------------------------------------------
head(X)

## -----------------------------------------------------------------
## for (i in 1:nrow(X)){
## 
##     if (i > 1) {
##       if ((X[i,6] == X[i-1,6]) & (X[i,3] == X[i-1,3])) {
##         X[i,10] = X[i,9] + X[i-1,10]
##       }
##       else {
##         X[i,10] = X[i,9]
##       }
##     }
##     else {
##       X[i,10] = X[i,9]
##     }
##   }

## ------------------------------------------------------------------------
# bruteforce implementation of the logic given above

f1 = function(temp){
  
  for(i in 1:nrow(temp)){
    if(i==1){
      temp[i,10]=temp[i,9]
    }else{
      if(temp[i,3]==temp[i-1,3] & temp[i,6]==temp[i-1,6]){
        temp[i,10]=temp[i,9]+temp[i-1,10]
      }else{
        temp[i,10]=temp[i,9]
      }
    }
  }
  return(temp)
}

(t1=system.time(f1(X)))

# avoid accessing dataframes 
# we create new column as a vector and later add it to dataframe
f2 = function(temp){
  a=numeric(nrow(temp))
  for(i in 1:nrow(temp)){
    if(i==1){
      a[i]=temp[i,9]
    }else{
      if(temp[i,3]==temp[i-1,3] & temp[i,6]==temp[i-1,6]){
        a[i]=temp[i,9]+a[i-1]
      }else{
        a[i]=temp[i,9]
      }
    }
  }
  temp[,10]=a
  return(temp)
}

(t2=system.time(f2(X)))

# be clever , look for problem specific exploits
# here we do that by setting the vector at the begining to 9th column
# and make changes whenever the condition is true
f3 = function(temp){
  a=temp[,9]
  for(i in 1:nrow(temp)){
    if(i>1){
      if(temp[i,3]==temp[i-1,3] & temp[i,6]==temp[i-1,6]){
        a[i]=temp[i,9]+a[i-1]
      }
    }
  }
  temp[,10]=a
  return(temp)
}

(t3=system.time(f3(X)))

y=c(3,3,4,5,6,6,6,7,8)

# F,T,F,F,F,T,T,F,F

y[-1]
y[-length(y)]
y[-1]==y[-length(y)]

c(F,y[-1]==y[-length(y)])

# use vector operations instead of doing things inside a for loop
# here we use the trick shown above to do comparison with previous 
# occurence using vector operations
f4 = function(temp){
  a=temp[,9]
  
  cond=c(F,(temp[-1,3]==temp[-nrow(temp),3] & temp[-1,6]==temp[-nrow(temp),6]))
  
  for(i in 1:nrow(temp)){
    
      if(cond[i]){
        a[i]=temp[i,9]+a[i-1]
    }
  }
  temp[,10]=a
  return(temp)
}

(t4=system.time(f4(X)))

# Instead of using condition check inside the for loop subset the indices

f5 = function(temp){
  a=temp[,9]
  
  cond=c(F,(temp[-1,3]==temp[-nrow(temp),3] & temp[-1,6]==temp[-nrow(temp),6]))
  
  k=1:nrow(temp)
  
  k_new=k[cond]
  
  for(i in k_new){
    
    a[i]=temp[i,9]+a[i-1]
  }
  temp[,10]=a
  return(temp)
}

(t5=system.time(f5(X)))