#examples:
vec1<-c(2,4,6)
vec2<-c(11,12,13,14,15,16)
column.names<-c("COLA","COLB","COLC")
row.names<-c("ROWA","ROWB","ROWC")
matrix.names<-c("MATA","MATB")
res1<-array(c(vec1,vec2),dim=c(3,3,2),dimnames = list(column.names,row.names,matrix.names))
res1

#Q1:MATRIX TO 1D ARRAY
rows=c("r1","r2")
cols=c("c1","c2","c3","c4")
mat1<-matrix(c(1,2,3,4,5,6,7,8),nrow=2,ncol=4,byrow = TRUE,dimnames = list(rows,cols) )
mat1
#convert to 1D array i.e. vector
mat_to_arr<-as.vector(mat1)
cat("the matrix after being converted to 1D array/vector is :",mat1,"\n")

#Q2. array of two 3x3 matrices each having 3 rows 3 cols and 2 vectors
vec1<-c(2,4,6)
vec2<-c(11,12,13,14,15,16)
vec3<-c(1,2,3,4,5,6,7,8,9)
column.names<-c("COLA","COLB","COLC")
row.names<-c("ROWA","ROWB","ROWC")
matrix.names<-c("MATA","MATB")
res1<-array(c(c(vec1,vec2),vec3),dim=c(3,3,2),dimnames = list(column.names,row.names,matrix.names))
res1

#q3. print 2nd row ele of 2nd matrix & 3rd row,3rd col of 1st matrix
vec1<-c(2,4,6)
vec2<-c(11,12,13,14,15,16)
vec3<-c(1,2,3,4,5,6,7,8,9)
column.names<-c("COLA","COLB","COLC")
row.names<-c("ROWA","ROWB","ROWC")
matrix.names<-c("MATA","MATB")
res1<-array(c(c(vec1,vec2),vec3),dim=c(3,3,2),dimnames = list(column.names,row.names,matrix.names))
res1
#:
res1[2, ,2]
res1[3,3,1]

#q4.combine 3 arrays so that the first row of 1st array followed by 2nd array's first row & then 1st row of 3rd array
array1<-rbind(rep("row1_a1",3),rep("row2_a1",3),rep("row3_a1",3))
array2<-rbind(rep("row1_a2",3),rep("row2_a2",3),rep("row3_a2",3))
array3<-rbind(rep("row1_a3",3),rep("row2_a3",3),rep("row3_a3",3))

# a column wise combination of array is taken
# transpose of the above combination gives the pattern in which i th row of array1 is followed by i th row 
#of array2 which is followed by i th row of array3

array_combination<-matrix(t(cbind(array1,array2,array3)),ncol=3,byrow = T)
array_combination


#q5.
list_data<-list("red","green",c(21,32,11),TRUE,51.23,119.1)
print(list_data)

#q7
list_data<-list(c("jan","feb","mar"),matrix(c(3,5,9,-1)),list("green",12.3))
names(list_data)<-c("1st quater","a_matrix","a_inner_list")
print(list_data)

#q8 ADD element in the end of the list
list_data<-list(c("jan","feb","mar"),matrix(c(3,5,9,-1)),list("green",12.3))
names(list_data)<-c("1st quater","a_matrix","a_inner_list")
list_data[4]<-"new element"
print(list_data[4])
list_data

#9 list to vector
list_1<-list(1:5)
list_2<-list(6:10)
vect1<-unlist(list_1)
vect2<-unlist(list_2)
vect1
vect2
vect2-vect1
sum(vect1)
vect1*vect2
vect2/vect1


#10 no of objects in a list
len<-length(list_1)
cat("length of list 1 is :",len,"\n")


#11 all elements of a list not in another list
list_1<-list(1:5)
list_2<-list(6,9,0,3,4,5)
setdiff(list_1,list_2)


#12 create a list and assign names 
list_data<-list(c("jan","feb","mar"),matrix(c(3,5,9,-1)),list("green",12.3))
names(list_data)<-c("1st quater","a_matrix","a_inner_list")
print(list_data)

