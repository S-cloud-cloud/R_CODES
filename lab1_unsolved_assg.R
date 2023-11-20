#1.calculate area & circumference of circle:
radius<-readline(prompt = "enter radius :")
radius<-as.integer(radius) 

area=radius * radius * pi
circum=2*pi*radius
cat("the area is : ",area,"\n","the circum is : ",circum,"\n")


#2.Celsius to F:
 celsius_to_Fharenheit <-function(c){
   f= {(c*9/5 )+ 32}
   return(f)
 }
 c<-readline(prompt = "enter degree in celsius : ")
 c<-as.integer(c)
 f<-celsius_to_Fharenheit(c)
 cat("the converted temp from ",c,"celsius to fharenheit is : ",f,"\n")
 
 #3.compound_interest
 p<-100;t<-2;r<-0.03; n<-2
 A<-p*(1+r/n)^n*t
 cat("the final amount A is : ",A,"\n")
 
 #4.swap without 3rd variable
 a<-readline(prompt="enter 1st no: ")
 a<-as.integer(a)
 b<-readline(prompt="enter 2nd no: ")
 b<-as.integer(b)
 cat("initial value of a is :",a," &b is :",b,"\n")
 a=a+b
 b=a-b #b=a
 a=a-b #a=b
 cat("swapped value of a :",a,"& b: ",b,"\n")
 
 
 #5.Relational operators
 x<-readline(prompt="enter 1st no: ")
 x<-as.integer(x)
 y<-readline(prompt="enter 2nd no: ")
 y<-as.integer(y)
 
 x>y
 x<y
 x==y
 x!=y
x>=y
x<=y

#6.convert Paisa into its equivalent rupee

pa<-readline(prompt="enter value in paisa :")
pa<-as.integer(pa)
rupee<-pa *(5/550)
paisa<-pa*(50/550)
cat("the given ",pa,"equals = ",rupee,"rupees and ",paisa," paisa.\n")


#7.convert second into hr+min+sec format:
sec<-readline(prompt="enter value in seconds :")
sec<-as.integer(sec) 
Hr<-sec *(1/4000)
min<-sec *(6/4000)
second<-sec*(40/4000)
cat("the given ",sec,"equals = ",Hr,"hr,",min," minute and ",second," second.\n")

#8.convert distance entered in meters to km and meter:
m<-readline(prompt="enter value in meters :")
m<-as.integer(m) 
km<-m *(2/2430)
meter<-m *(430/2430)
cat("the given ",m,"meters equals = ",km," km and ",meter," meters\n")

#9.Notes to be withdrawn in 10,50,100s if amount entered is in 100s:i.e. if someone says "5,it means withdrawl amount is 500
#objective is to figure out the best way to give them these notes so that we use the fewest no of notes possible


amount_to_withdraw<-readline(prompt = "amount of money to be withdrawn in 100rs: ")
amount_to_withdraw<-as.numeric(amount_to_withdraw)
amount_to_withdraw=amount_to_withdraw *100
#floor helps take the minimum i.e. only integer value:
notes_100<-floor(amount_to_withdraw/100)

#whatever remainder amount is left after giving int no of 100 rs note is checked for 50_notes and similarly for 10_notes
#amount left to be withdrawn after giving 100 notes
amount_to_withdraw=amount_to_withdraw %% 100

notes_50<-floor(amount_to_withdraw/50  )
#amount left after giving 100s & 50s note in int values is checked for 10_notes denomination
amount_to_withdraw=amount_to_withdraw %% 50
#since no of notes given practically can only be int value/whole no so floor used even here
notes_10<-floor(amount_to_withdraw / 10)

cat("no of 100 notes :",notes_100,"\n.")
cat("no of 50 notes :",notes_50,"\n.")
cat("no of 10 notes : ",notes_10,"\n.")


#10.calculate gross salary
initial_salary<-as.integer(readline(prompt = "enter his salary :"))
dearness_allowance= initial_salary *0.4
houseRent_allowance = initial_salary *0.2
gross_salary=(initial_salary + dearness_allowance + houseRent_allowance )
cat("Ramesh's gross salary is : ",gross_salary ,"calculated on a basic salary of ",initial_salary,"\n")


#VECTORS :
#q1.VALUE B/W -50 TO 50
vect1<-c(seq(-50,50,by=10))

#q2.find min( ) and max() value of vector
max(vect1)
min(vect1)

#q3>3 types of data type vector and find their class

vect1<-c(TRUE,FALSE,TRUE)
vect2<-c(13.1,12,67,18.1)
vect3<-c("aisa","reha","lisa")

cat("the vector ",vect1,"is of class : ",class(vect1),"\n")
cat("the vector ",vect2,"is of class : ",class(vect2),"\n")
cat("the vector : ",vect3,"is of class :",class(vect3),"\n")

#q4sum,mean,product of given vector:

vect1<-c(1,3,6,9)
vect2<-c(4,5,6,4)
sum<-vect1+vect2
print(sum)
sum(vect1)
mean(vect1)
mean(vect2)
product_self<-(vect1*vect1)
product_self
product<-(vect1 * vect2)
product