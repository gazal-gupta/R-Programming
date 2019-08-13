
# QUESTION-1:  Run 3 variation discussed in class for joins

df1 = data.frame(CustomerId=1:6 ,AmtSpend = c(runif(6,1000,15000)))
df2 = data.frame(CustomerId=c(2,3,6) ,Product = c("Bat","Helmet","Shoes"))
df3 = data.frame(CustomerId=1:4 ,Area = c("Jaipur","Jodhpur","Delhi","Gurgaon"))
df4 = rbind(df1,c(7,29093))
#Inner Join
First_Join = inner_join(df1,df2,by="CustomerId")
Second_Join = inner_join(df1,df3,by="CustomerId")

#Left Join
Third_Join = left_join(df1,df3,by="CustomerId")

#Right Join
Fourth_Join = right_join(df2,df4,by="CustomerId")

#semi Join
Fifth_Join = semi_join(df2,df4,by="CustomerId")

#Anti Join
Sixth_Join = anti_join(df2,df4,by="CustomerId")

#------------------------------------------------------------------

# QUESTION-2: # create follwoing pattern  (not hard coded)
#"a1"  "c3"  "e5"  "g7"  "i9"  "k11" "m13" "o15" "q17" "s19" "u21" "w23" "y25"
ltr = letters
num = c(1:26)
combine=paste0(ltr,num)
combine


for(i in 1:length(combine)){
  if (i%%2!=0){
    print(combine[i])
  }
 
 }
#letters[1,25,seq=2]



# QUESTION-3 : Use mtcars
#(a) add a new column Car_ID with car_1 ,car_2.......,car_31,car_32
df_mtcar = mtcars
df_mtcar$Car_ID = paste("car",seq(1,32,by=1),sep="_")
View(df_mtcar)

#df_mtcar$Car_ID = df_mtcar[c("car_1","car_2","car_3","car_4","car_5","car_6","car_7","car_8","car_9","car_10"),] 

#(b) create a new table where hp > 100 and cyl <= 6
#Question 3 (b)
df_mtcar_filter = df_mtcar[df_mtcar$hp>100 & df_mtcar$cyl<=6,]


# QUESTION-4 : 
# x = c("delhi","mumbai","dharmsala","dausa","new delhi","denmark","chennai","dwarka")
#use FOR and or IF loop to generate an output as
#[1] "delhi"
#[1] "dharmsala"
#[1] "dausa"
#[1] "denmark"
#[1] "dwarka"


x = c("delhi","mumbai","dharmsala","dausa","new delhi","denmark","chennai","dwarka")

for (i in 1:length(x)){
    
   if(substr(x[i],1,1) =="d"){
     print(x[i])
     }
       
}







x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x, y)
