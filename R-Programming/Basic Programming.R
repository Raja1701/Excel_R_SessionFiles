a = 10+5
b = 'This is my first R-Programming Session'
a
b
c <- 25
c

#L letter will define integer value
A = 25L

#Data Structures in R
#Vector and Data Frame, lists

#Homogeneous Data Structure(Vector)

#R doesn't understand the data type/structure of the below code.
age <- 20, 25, 30, 35, 45
age

# To understand multiple value need to c or list
age1 <- c(20,25,30,35,45)
age1

# In this code everything can be converted to string only. Hence it will considered as string
info <- c('Raja',25 ,145.2, TRUE )
info

# In this code everything can be converted to numeric. Hence it will considered as Numeric 
info1 <- c(25 ,145.2, TRUE )
info1

#Accessing elements from a Vector
info <- c('sakshi', 25, 145.32, TRUE)
info[2]
info[4]
info[1:3]
info[3]
info[2:3]
#Accessing elements with different order - In order to get the different index number we need to use 'c' function
info[c(1,2,4)] 
info[c(1,4)]

#used to find out the index number of any value - This will return with the index number
match(25,info)  # returns with index number 2
match(TRUE,info) # returns with index number 4

#Assigning or replacing values in Vector - Variance[index number]

info[2]
info[2] <- 35
info

#replace multiple values need to use 'c' function
info[c(1,4)] # this will help to find the index number
info[c(1,4)] <- c('Raja',FALSE)
info
info[c(1,2,4)] <- c('Sanjana', 100, TRUE)
info

#[] - Square brackets are used for Extraction/Slicing somethin
#() - Parentheses are used to call function - Inbuild function in programming


#List Creation - This will take the value type as it is (eg - string as string, int as int)
lst = list('Sanjana',5,15.5,T )
lst

#Accessing or replacing elements from list
lst[2:4]
lst[3]
lst[1:3]
lst[c(1,2,4)]

lst[1] <- 'Mrudula'
lst

#Data frame creation (Table Creation with Rows and Columns)

ID <- c(101,102,103,104)
Name <- c('Raja','Mukund','Mahesh','Pushpanathan')
Age <- c(33,34,32,35)
Dept <- c('Analtics','Shipping','Banking','CreditCard')
City <- c('Dubai','Kuwait','Tambaram','Chennai')

df <- data.frame(ID,Name,Age,Dept,City)
View(df)


#Extracting elements from dataframe

df[1:5]
df[1:4]

df[1,2]
df[3,4]
df[5,6]
df[1:2,4:5]
df[3:4,1:2]
df[1,c(2,5)]
df[2,c(2,5)]
df[c(1,4),5]
df[c(1,3),c(2,4)]
df[c(2,4),c(2,3,4)]

#Replacing Values from Data Frame
df[3,4]
df[3,4] <- 'Manager'
View(df)
df[3,c(1,5)] <- list(201,'Bengaluru')
df[2,c(1,5)] <- list(201,'Dubai')