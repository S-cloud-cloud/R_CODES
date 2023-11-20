#q1.create data frame from 4 given vectors
name=c("shambhavi","murari","kashyap")
language=c("R","python","java")
age=c(27,27,27)
hobby=c("tennis","volleyball","cricket")
df=data.frame(name,language,age,hobby)
print(df)

#q2.extract specific column from a data frame using column name
name=c("shambhavi","murari","kashyap")
language=c("R","python","java")
age=c(27,27,27)
hobby=c("tennis","volleyball","cricket")
df=data.frame(name,language,age,hobby)

#df$name
df$hobby
cat("the column name,age,language, are being printed using column name: \n",df$name,"\n",df$age,"\n",df$language,"\n")


#q3 extract first two rows
name=c("shambhavi","murari","kashyap")
language=c("R","python","java")
age=c(27,27,27)
hobby=c("tennis","volleyball","cricket")
df=data.frame(name,language,age,hobby)
#square brackets for accessing:
print(df[1:2,])


#q4. extract 3rd & 5th rows & 1st & 3rd cols
name1=c("shambhavi","murari","kashyap","YBK","sangita")
language1=c("R","python","java","Javascript","c++")
age1=c(27,27,27,27,27)
hobby1=c("tennis","volleyball","cricket","chess","badminton")

df1=data.frame(name1,language1,age1,hobby1)
print(df1)
#square brackets for accessing:
cat("\n printing 3rd & 5th row & 1st & 3rd col : \n")
print(df1[c(3,5),c(1,3)])

#q5
name=c("shambhavi","murari","kashyap")
language=c("R","python","java")
age=c(27,27,27)
hobby=c("tennis","volleyball","cricket")
df=data.frame(name,language,age,hobby)
print(df)
newdf<-cbind(df,data.frame(hobby1=c("tennis","volleyball","cricket")))
print(newdf)

#q6
newdf1<-rbind(newdf,data.frame(name="ybk",language="javascript",age="27",hobby="chess",hobby1="music"))
print(newdf1)

#q7
newdf2=subset(df1,select=-c(hobby1))
print(newdf2)

#8
newdf3<-df[-c(1,3),]
newdf3

#9change single col_name
colnames(df)[1]<-'TITLE'
df

#10change column name:
colnames(df)<-c('Name','CODE','NO','EXTRAS')
df


#11) student details:
roll_number=c(2128121,212821,2128021,2128212)
name=c("shambhavi","sakshi","kashyap","shambhu")
department=c("Product manager","web development","data analyst","machine learning")
course=c("CSSE","CSE","CSSE","CSSE")
yearof_joining=c(2021,2022,2021,2021)

df_stud<-data.frame(roll_number ,name ,department ,course ,yearof_joining)
print(df_stud)
#11.1:names of students who joined in year 2021
year_print<-function(df_stud){
  newdf_stud=subset(df_stud,yearof_joining==2021)
  print(newdf_stud$name)
}
cat("name of the students who joined in year 2021 are as follows \n")
year_print(df_stud)

#11.2:data of student having given roll by user:
my.roll<-readline(prompt = "enter roll no : ")
#execute both lines separately
roll<-as.integer(my.roll)

 roll_data<-function(df_stud,roll){
   newdf_roll=subset(df_stud,roll_number==roll)
   print(newdf_roll)
 }
cat("\n data of student having ROLL_NO = ",roll," : \n")
roll_data(df_stud,roll)


#12: create a data_frame having name,age,height,weight and then addition of new column gender,then invert the gender 
#cat can't multiple values variable: like data.frames
#there is a function in R to get reverse values called rev()
datalist<-data.frame(name=c("amit","Meera","Raj","Saan","Lilly"),age=c(25,27,26,30,24),height=c(168,170,167,172,166),weight=c(57,62,56,65,56))
print("original datalist:\n")
print(datalist)
datalist1<-cbind(datalist,data.frame(gender=c("F","M","F","F","M")))
print("the data list after inserting genders: \n")
print(datalist1)
#inverting the genders:

#mannualy editing:
#datalist1[[5]][1]="M"
#datalist1[[5]][2]="F"
#datalist1[[5]][2]="M"
#datalist1[[5]][2]="M"
#datalist1[[5]][2]="F"

#using repeat loop:
r<-1
repeat{
  if(datalist1[[5]][r]=="M"){
    datalist1[[5]][r]="F"
    r=r+1
  }
  else{
    datalist1[[5]][r]="M"
    r=r+1
  }
  if(r>5){
    break;
  }
}

print("the data list after inverting the genders is: \n")
print(datalist1)





 




