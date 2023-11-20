#1.

a=c()
print(a)
a=append(a,121)
print(a)

#or
a=c()
print(a)
a=c('me','i','u','us','whatif')
print(a)

#2.
vec = c( 2, 3 , 4,5) 
print("Sum of the vector:") 
print(sum(vec)) 
print("Mean of the vector:") 
print(mean(vec)) 
print("Product of the vector:") 
print(prod(vec))

#3.
a = c(2, 4, 8, 11) 
b = c(73, 8, 2, 90) 
print("vector a ") 
a
print("vector b ") 
b
print("Elements of vector a that are not in vector b are:") 
ans = setdiff(a, b) 
print(ans)

#4
lst1 = list(sample(1 : 15, size = 5, replace = F)) 
print(lst1) 

#5 same as 4:
lst1 = list(sample(15 : 30, size = 5, replace = F)) 
print(lst1) 


#6
lt=list(10:20)
arr=array(unlist(lt),dim=c(3,3,3))
print(arr)


#7.count no of character:(length of string)
# Given String
var<- "hi i am shambhavi"
# Using nchar() function:
#counts including white spaces
result<- nchar(var)
print(result)

#8.no of words in a string:
#using strsplit(),i.e. counting no of words using white spaces:

str1<-"\n hello let's learn to count no of words in a string :) "
print("\n original str :!")
str1
print("\n total no of words in it :^) ")
splited<-strsplit(str1," ")
#find the no of splits performed: sapply()
sapply(splited,length)

#9.
m = matrix(c(1, 22, 3, 19, 14, 17, 12, 18, 7), nrow = 3) 
print("input matrix:") 
print(m) 
max = which(m == max(m), arr.ind = TRUE) 
print(paste("Maximum value: ", m[max])) 
print(max)
min = which(m == min(m), arr.ind = TRUE)   
print(paste("Minimum value: ", m[min])) 
print(min)

#10.
fac1 <- as.factor(c(1:5)) 
print ("Factor1 : ") 
print (fac1) 
sapply(fac1,class) 

fac2 <- as.factor(c(8:10)) 
print ("Factor2 : ") 
print (fac2) 
sapply(fac2,class) 

# combine into one factor 
combined <- unlist(list(fac1,fac2)) 
print ("Combined Factor : ") 
print (combined) 

sapply(combined,class) 


#11.

names=c("bobby","sravan","ojaswi") 
age=c(20,22,16) 

                                                                                                                                                                                                                                                                                                                   =c("kakumanu","kakumanu","hyderabad") 
marks=c(89,98,90) 

a=data.frame(names,age) 

b=data.frame(address,marks) 
print(a) 
print(b) 


#12.
num     = as.integer(readline(prompt = "Enter a number: "))
# num  = 15
isPrime = 0
if (num > 1) {
  isPrime = 1
  for (i in 2: (num - 1)) {
    if ((num %% i) == 0) {
      isPrime = 0
      break
    }
  }
}
if (num == 2) isPrime = 1
if (isPrime == 1) {
  print(paste(num, "is a prime number"))
} else {
  print(paste(num, "is not a prime number"))
}
