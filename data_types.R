#Run the code lines in console 

#logical data type
variable_logical<- TRUE
cat(variable_logical,"\n")
cat("the data type of variable_logical is",class(variable_logical),"\n")

#Numeric data type
variable_numeric<- 3252
cat(variable_numeric,"\n")
cat("the data type of variable_numeric is",class(variable_numeric),"\n")

#integer data type 
variable_integer<- 133L
cat(variable_integer,"\n")
cat("the data type of variable_integer is ",class(variable_integer),"\n\n")

#complex data type
variable_complex<- 3+2i
cat(variable_complex,"\n")
cat("the data type of variable_complex is",class(variable_complex),"\n\n")

#character data type
#variable_character<- "learning r programming"
variable_char<- "learning r prrogramming"
cat(variable_char,"\n")
cat("the data type of variable_char is",class(variable_char),"\n\n")

#Raw Data type
variable_raw<-charToRaw("learning r programming")
cat(variable_raw,"\n")
cat("the data type of variable_raw is ",class(variable_raw),"\n\n")
