
#Q1)
print(getwd())
setwd("C:/Users/KIIT")
print(getwd())
data<-read.csv("Student.csv")
print(data)

#q2)
max_p<-max(data$percentage)
print(max_p)
stud<-subset(data,percentage == "99%")
print(stud)

#q3
stud_cse<-subset(data,branch == "CSE")
print(stud_cse)

#q4
stud_cse_smart<-subset(data,percentage>="80%" & branch == "CSE")
print(stud_cse_smart)

#q5
stud_DOA<-subset(data, as.Date(DOA) >= as.Date("2017-05-01"))
print(stud_DOA)

#EXCEL :
#q6
#install xlsx package
install.packages("xlsx")
#verify package is installed.
any(grepl("xlsx",install.packages()))
#load library into R workspace.
library("xlsx")
#q7
#reading first sheet from file student.xlsx
data1<-read.xlsx("student.xlsx",sheetIndex = 1)
print(data1)
data2<-read.xlsx("student.xlsx",sheetIndex = 2)
print(data2)

#q8
#if not installeded then library(readxl) is to be installed
#read data from both the files : here done and saved as data1 & data2
#now to merge:
merged_data <-merge(data1,data2,by="name")
print(merged_data)

#q9 : write merged file in a new excel file
#file path for new file is as follows:
   output_file<- "Merged_student.xlsx"
   #write() function used:
   write.xlsx(merged_data,file = output_file,sheetName ="sheet1",row.names = FALSE )
   




