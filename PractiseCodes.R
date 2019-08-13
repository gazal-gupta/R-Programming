#variation 1: different column name and then join the table

#Variation 2 : combination of two column and then output the result
df1 = data.frame(Customerid=c(1,2,3,4),Country =c( "I","I","U","U"),avg = c( 10,11,12,13))
df1
df2 = data.frame(Customerid=c(1,2,3,4),Country =c( "U","U","I","I"),Brand = c( "Ipad","Iphone","Samsung","Moto"))
df2
df3 = paste(df1$Customerid,df1$Country)

#variation 3 : take out specific column into a table

# more qeustion on joins in next class.

mean(mtcars$mpg)
median(mtcars$mpg)
max(mtcars$mpg)
sd(mtcars$mpg)
var(mtcars$mpg)
a=range(mtcars$mpg)

range1 = max(mtcars$mpg) - min(mtcars$mpg)
range1

mtcar = mtcars

ab = mtcar$mpg[1:5]
ab
ab1 = head(mtcar$mpg,5)
ab1


mean1 = sum(ab)/length(ab)
mean1
summary(mtcars)

library(psych)
ab1 = describe(mtcars,IQR = TRUE)
?psych
?describe
#ab1 = describeFast(mtcars)

ab1[3,5]
ab2

library(vcd)

y = Arthritis
View(y)

table (y$Treatment,y$Sex,y$Improved)

t1 = table (y$Treatment)
tab1 = as.data.frame(t1)
prob1 = (prop.table(tab1))*100
prob1


#How many male got treatment
table(Arthritis[Arthritis$Sex=="Male",]$Treatment)

tab1 = table(y$Treatment,y$Sex)
tab1
datatab1 = data.frame(tab1)
datatab1
datamale = datatab1[datatab1$var1 = "Female",]


tab1 = mean(Arthritis[Arthritis$Sex=="Female",]$Age)
tab1

tab2=xtabs(~Treatment+Improved,data=Arthritis)

#For creating cross tables between two or more variables , you can either use function table 
#or xtabs. 
table(Arthritis$Improved,Arthritis$Sex)
xtabs(~Improved+Sex,data=Arthritis)

tab2=xtabs(~Treatment+Improved,data=Arthritis)
tab2
prop.table(tab2)*100

#Percentages total to 1 across values of Treatment 
prop.table(tab2,1)

#Percentages total to 1 across values of Improved 
prop.table(tab2,2)

#function margin.table collapses your count table across the given dimension 
#[passed as second argument]. If second argument is not present, result is simple count of total elements.
margin.table(tab2)

margin.table(tab2,1)
margin.table(tab2,2)


# adding sum across a dimension without collapsing the table. This can be done using addmargins function. 
addmargins(tab2)

addmargins(tab2,2)








car = mtcars
car1 = mean(car[car$am==0,]$mpg)
car1
car2 = mean(car[car$am==1,]$mpg)
car2
if(car1>car2){
  print("Auto") 
  else{ 
  print("Manual")
  }
}
car3 = max(car[car$gear==3,]$hp)
car3

car4 = max(car[car$gear==4,]$hp)
car4
#------------------------------------------------------------------
#Data Visulization Class 6
install.packages(ggplot2)
library(ggplot2)

p = ggplot(mtcars,aes(x=wt,y=mpg))
p

p+geom_point() + geom_line()+geom_smooth()
p+geom_rect()

q= ggplot(mtcars,aes(x=disp,y=hp))
q

q+geom_point(color="red")

q+geom_line()

q= ggplot(mtcars,aes(x=wt,y=mpg,color = as.factor(am)))
#-factor converted into am as the value was only 0 and 1 earlier it was taking
# as range
q
q+geom_point()


g=mtcars
mpg,hp,gear
q= ggplot(mtcars,aes(x=qsec,y=drat,color = as.factor(gear)))+geom_point()+geom_smooth()
q
q+geom_point()
q+geom_line()

#npar used to compare two or 4 graphs on screenw
#5 variable
p=ggplot(mtcars,aes(x=wt,y=mpg,color=factor(vs),shape=factor(am),size=cyl))

p+geom_poin

#for displaying 2 smooth line into one smooth then the color to be put on
#geometric layer

p=ggplot(mtcars,aes(x=wt, y=mpg))
p+geom_point(aes(color=factor(vs)))+geom_smooth()

library(vcd)
library(hflights)
library(dplyr)

#single number variable
attach(hflights)
?hflights
?hist
#histogram
hist(mtcars$hp)
hist(mtcars$mpg)
hist(mtcars$mpg,breaks = c(3,7,11,15,35)) #break ar given for interals
hist(mtcars$mpg,breaks = c(5,10,15,20,25,30,35,40))

ggplot(hflights,aes(x=DepDelay))+geom_histogram()+geom_density(color="red")
#Qyestion: Plot historgram with density
#hist(DepDelay)
#hist(AirTime) -  This is quick way to user histogram without any pacakage
hist(AirTime)+geom_density()
f_sub = filter(hflights,DepDelay<1000)

ggplot(f_sub,aes(x=DepDelay))+geom_histogram(bins = 10)

ggplot(f_sub,aes(x="DepDelay",y=DepDelay))+geom_boxplot()

#
ggplot(f_sub,aes(x="DepDelay",y=DepDelay))+geom_violin()

ggplot(mtcars,aes(x="mpg",y=mpg))+geom_boxplot()

ggplot(mtcars,aes(x=factor(am),y=mpg))+geom_boxggtitle(plot(color= "red",fill="blue")

?geom_boxplot

ggplot(f_sub,aes(x=UniqueCarrier))+geom_bar(color='blue',fill='green',alpha =.5,width=0.7)+
  xlab("AirCarrier") + ylab("Freq")+ggtitle("Graph")

#identify the outliers in mtcars
summary(mtcars$mpg)


b= a*1.5
b
c= quantile(mtcars$mpg,0.75) + b
e= quantile(mtcars$mpg,0.25) - b
e
d= mtcars[mtcars$mpg>c | mtcars$mpg<e,]
nrow(d)

#---------------------
#Finding outlier in Mtcar data set of mpg column
H0= quantile(mtcars$mpg,0.75) + IQR(mtcars$mpg) * 1.5
H0
H1 = quantile(mtcars$mpg,0.25) - IQR(mtcars$mpg) * 1.5 
H1
d= mtcars[mtcars$mpg>H0 | mtcars$mpg<H1,]
nrow(d)
quantile(mtcars$mpg)
quantile(mtcars$mpg, prob = seq(0, 1, length = 11), type = 3)


#______________________________

#From the normal distribution

H0= mean(mtcars$mpg) + 3*sd(mtcars$mpg)
H0
H1 = mean(mtcars$mpg) - 3*sd(mtcars$mpg)
H1
d= mtcars[mtcars$mpg>H0 | mtcars$mpg<H1,]
nrow(d)


#------------------------ from fligth data set
v1 = is.na(hflights$DepDelay)
length(v1)
v1 = is.na(hflights$DepDelay)


H0= mean(hflights$DepDelay,na.rm = T) + 3 * sd(hflights$DepDelay,na.rm = T)
H0

H1 = mean(hflights$DepDelay,na.rm = T) - 3*sd(hflights$DepDelay,na.rm = T)
H1

d= hflights[hflights$DepDelay>H0 | hflights$DepDelay<H1,]
e= hflights[hflights$DepDelay<H1,]
nrow(d)
nrow(e)
e = min(hflights$DepDelay,na.rm = T)
e
