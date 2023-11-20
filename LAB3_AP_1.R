#matrix data type :  using matrix function:
mat1<-matrix(1:20,nrow=5,ncol=4)
mat1
#default it is by row
#arranging row by col:
mat1<-matrix(1:20,nrow=5,ncol=4,byrow = FALSE)
mat1

#q2.extract element from vector: search specific ele from vector
vect1<-c(11,12,13,14,15,16)
vect1[2]

#q7.create a matrix 4x3,display the elements of row1,row3 and column 2 of that matrix:
mat1<-matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=4,ncol=3,byrow = TRUE);
mat1[c(1,3),] #row 1 & 3
mat1[,2] #col2


#q8.create two matrix then perform add,sub,mul,div on it:
mat1<-matrix(c(1,2,3,4,5,6,7,8,9,10,11,12),nrow=3,ncol=4)
mat1
mat2<-matrix(c(5,6,7,8,9,10,11,12,13,14,15,16),nrow=3,ncol=4)
mat2
mat1+mat2
mat1-mat2
mat1/mat2
mat1 * mat2

#q9.create 3x3 mat add 4 to each ele then display:
mat1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
y<- 4
mat1.new<-mat1+y
mat1.new

#q10.set matrix values less than 5 to zero
mat1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
mat1
for(r in 1:nrow(mat1)){
  for(c in 1:ncol(mat1)){
    if(mat1[r,c]<5){
      mat1[r,c]=0;
    }
  }
  
}

mat1

#q11.set symmetric/not :
mat1<-matrix(c(1,1,1,1,1,1,1,1,1),nrow=3,ncol=3)
matnew<-t(mat1)
if(identical(dim(mat1),dim(matnew))){
if(all(matnew==mat1) )
{
  #return(TRUE)
  cat("the matrix matnew is symmetric to mat1")
}else
  { print("NOT symmetric")
  #return(FALSE) 
  }}else{
  print("NOT symmetric")
  }

#q12.create a matrix and evaluate the sum  of elements row wise:
mat1<-matrix(c(11,12,13,14,21,22,23,24),nrow = 2,ncol = 4,byrow = TRUE)
mat1
for(r in 1:nrow(mat1)){
   result<- sum(mat1[r,])
  cat("the sum of elements of row ",r," is ",result,"\n")
}




