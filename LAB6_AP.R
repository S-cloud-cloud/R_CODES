#lab6:FUNCTIONS
#q1)avg 3 nos:
average<-function(x,y,z){
  avg = (x+y+z)/3
  cat("average of 3 nos is : ",avg,"\n")
}
average(1,2,3)

#q2) factorial of a no : recursive function:
R_factorial<-function(x){
  if(x==0)
    return(1)
  else
    return(x*R_factorial(x-1))
}
R_factorial(5)
#
  factorial=1;
fact<-function(num){
  if(num < 0) {
    print("Sorry, factorial does not exist for negative numbers")
  } else if(num == 0) {
    print("The factorial of 0 is 1")
  } else {
    for(i in 1:num) {
      factorial = factorial * i
    }
    print(paste("The factorial of", num ,"is",factorial))
  }
}
  fact(5)



#q3) HCF & LCM OF 2 NOS:
gcd<-function(a,b){
  while(b){
    t=b
    b=a %% b
    a=t
  }
  return(t)
}
x=9
y=24
hcf = gcd(x,y)
lcm=(x*y)/hcf
cat("the hcf is : ",hcf,"\n the lcm is : ",lcm,"\n")

#q4)SUM of series 1 to N
R_sum<-function(N){
  if(N==0)
    return(0)
  else
    return(N+R_sum(N-1))
}
R_sum(3)

#q5)
#q6)simple interest,R default_value
SI<-function(P,Ti,R=0.05){
  S_interest=P*Ti*R;
  print(S_interest)
}
SI(1000,5)

#q7) decimal to binary : recursive:
R_decimal_to_binary<-function(decimal){
  if(decimal==0){
    return("0")
    }else if(decimal==1){
    return("1")
      }else{
    reminder<-decimal %% 2
    quotient<- decimal %/% 2
    binary_part<-R_decimal_to_binary(quotient)
    return(paste(binary_part,reminder,sep= ""))
  }
}
decimal_no <- 5
binary_result<-R_decimal_to_binary(decimal_no)
cat(paste("decimal ",decimal_no," in binary is : ",binary_result))

#q8 factorial recursively:
R_factorial<-function(x){
  if(x==0)
    return(1)
  else
    return(x*R_factorial(x-1))
}
R_factorial(5)

#9 sum of square series:
sum_sq<-function(N){
  if(N==1){
    return(1)
  }else{
    return(N*N+sum_sq(N-1))
  }
  }
 sum_sq(3)  

 #10:sum,avg,standard deviation of 5 numbers:
 
 operations<-function(a,b,c,d,e){
   s= sum(a,b,c,d,e)
   print(s)
   avg = (s)/5;
   print(avg)
   #IN BUILT FUNCTION sd EXISTS TO FIND STANDARD DEVIATION:
   x<-c(a,b,c,d,e)
   sd(x)
   
   
 }
 operations(1,2,3,4,5)
 
 #11:generate a set of nos and run them in built-in functions:
 list1=c(1,2,3,4,5,6)
 
 mean(list1)
 median(list1)
 var(list1)
 sd(list1)
 scale(list1)
 summary(list1)
 rank(list1)
 quantile(list1)