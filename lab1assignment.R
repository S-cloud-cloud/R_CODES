print("hello world !")
cat("hello world !")
paste("hello world !")

#mean
print(mean(1:5))

#get help in R 
help("mean")
help("cat")
help.search("plotting")

#R variables
X<-1
#auto printing
X 
#explicit printing
print(X)

#Assignment
x<-c(1,2,3,4,5,6,7)
y<-c(1:7)
z<-1:4
print(x)
print(y)
print(z)
cat(z)
cat(x)

#R as a calculator
5+(6+7)*pi^2
log(exp(1))
log(1000,10)
sin(pi/3)^2+cos(pi/3)^2
sin(pi/3)^2+cos(pi/3)^2
#case sensitive:
Sin(pi/3)^2+cos(pi/3)^2

log2(32)
sqrt(2)

#sequence function:
seq(0,5,length=6)
seq(0,5,length=12)
seq(0,11,length=2)
seq(0,4,length=3)
seq(0,5,length=3)

#plot function
plot(sin(seq(0,2*pi,length=100)))
plot(cos(seq(0,2*pi,length=100)))

#R-variables & assignment
var.1=c(0,1,2,3)
print(var.1)
var.2<-c("learn","R")

#rightward assignment operator
c(TRUE,1)->var.3
print(var.3)

c(FALSE,1)->var.4
print(var.4)

p<<-c(18,13,14)
d<-c(18,13,14);p;d;rm(p);rm(d)

#cat & class variable:
#cat combines multiple items into a continuous print output
#print("var.1 is",var.1,"\n") -- this will be invalid 
cat("var.1 is",var.1,"\n")

var_x<-"hello"
cat("the class of  var_x is",class(var_x),"\n")

#integer in R is represented by L after it :
var_i<-27L
cat("now the class of var_i is ",class(var_i),"\n")

var_o<-35.5
cat("the class of var_o is ",class(var_o),"\n")

#to know all the variables available in work_space we use ls() -- list function .
print(ls())

var_u<-"to be deleted"
paste(var_u)
#variables can be deleted using the rm() function .
rm(var_u)
paste(var_u)

#not available nos
w<- c(1,2,3,NA)
#implicit printing:
w+3
rm(w)

#Not a number
log(c(0,1,2))
#NaN: not a number
0/0

#R atomic data types

#1.logical: true/false(1/0)
w<-T
p<-F
w;p
rm(w);rm(p)

#2.character
a<-"1"
b<-1
a;b

#3.Numerical
b<-sqrt(2)
b;cat("\n class of b is ",class(b),"\n")

#All these data types are vector objects including ,integer,complex(3+2i),character,Raw
#raw : eg: character data stored in ascii value i.e. it's raw form for computers
var_p<-charToRaw("raw data");cat("the class of var_p is : ",class(var_p),"\n");cat(var_p)
rm(var_p)

v<-c(2,5.5,6)
t<-c(8,3,4)
print(v+t)
print(v-t)
print(v*t)
print(v/t)
#remainder:
print(v%%t)
#exponent
print(v^t)
print(v&t)
print(v|t)
print(!v)
#logical AND & OR operator
print(v&&t)
print(v||t)

d<-c(2,TRUE,6);d
rm(d)

#put one more value in V
k<-c(2,5.5,6,2)
l<-c(8,3,4)
print(k+t)
print(k-t)
print(k*t)
print(k/t)

#R program to take input from user
my.name<-readline(prompt="enter name : ")
my.age<-readline(prompt="enter age  : ")
#to convert char to int  since it is string by default
my.age<-as.integer(my.age)
print(paste("HI ",my.name," next year u will be ",my.age+1," years old"))

#c() concatenate can create a vector/list
x=c(3,7,8,9,11)
x
#replicate function : rep(what,how many times)
x=rep(10,3)
x

#difference between c & paste
x=c("I ","want ","peace ","and","wealth")
x
paste("I ","want ","peace ","and","wealth")

#Boolean vectors
x=1:5
x
x<3
x>0
x>100

#manipulation of vectors
# [] can be used to access elements in a list
x=c(100,101,102,103)
x[2]
x[0] #1 based indexing
x[4]
#access 3rd and 4th element simultaneously
x[c(3,4)]
#or
x[3:4]


x
x+1
x*2
x<-c(1.5,1.6,2)
log(x)
y<-1:5
y
#
z<-seq(1,1.4,by=0.1)
z
y+z

#won't work not equal length:
k<-seq(1,1.4,by=0.11)
k
y+k

length(y)

#extract positive elements:
mydata<-c(2.5,3,4,-0.1)
mydata
#checking:
mydata>0
#extracting:
mydata[mydata>0]
#accessing selected
mydata[c(1,3)]
#removing element
mydata[-c(4)]

#operators:
x=100:150
x[x>145]
x[x>100 & x<=120]

x<-c("I", "want", "to","go","home")
#elements in x that do not equal want
x[x!="want"]
#for checking several elements : %in%
#elements of x that equal I,to,home or rome
x[x %in% c("I","to","home","rome")]
#elements of x that equal dome,home
x[x %in% c("dome","rome")]

#bar_plot:
marks<-c(90,95,98,96)
barplot(marks,main="comparing marks of 5 subjects",xlab="Marks",ylab="subjects",names.arg=c("AI","CN","SE","ML"),col="darkred",horiz=FALSE)
