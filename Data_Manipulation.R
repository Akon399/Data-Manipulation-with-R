# Data Manipulation.
# Notes & Lecture by Akhona Njeje.
# Exploring the Dplyr & Tidyr. Date 8 May 2023.



# DPLYR.

install.packages('dplyr')
install.packages('nycflights13')   # Dataset.

library(dplyr)
library(nycflights13)

head(flights)
head(filter(flights,month==11,day==3,carrier=='AA'))
# filter() is the 1st top function thats our tool in dplyr.

slice(flights,1:5)   # We sliced through the rows in our Flighdataset.
head(arrange(flights,year, month,day,arr_time))   # Arrange = Order your Rows vs Column.

head(select(flights,carrier))   # Select() function helps us zoom in on specific column.
head(rename(flights, airline_carrier = XYZ2))   # The rename() function helps us rename datasets, columns,databases etc.


distinct(select(flights,carrier))   # Gives us Unique values within the column.
mutate(flights,XYZ1=arr_delay - dep_delay)   # mutate helps us create new calculated columns.
transmute(flights,XYZ1=arr_delay - dep_delay)   # transmute only focuses on the new column you createsd & leaves out everything.

summarise(flights,avg_air_time= mean(air_time,na.rm = TRUE))   # mean() of a specific column.
summarise(flights,total=sum(air_time,na.rm = TRUE))   # Sum() gives us the total in the selected column.

sample_n(flights,10)   # This means we only want 10 random number of rows in our dataset.
sample_frac(flights,0.10)   # This sample_franc() gives us only 10% of data in our dataset.


# Pipe Operator %.

df = mtcars
result = arrange(sample_n(filter(df,mpg>20),size = 5,desc(mpg))
print(result)

filter(df,mpg>20)
sample_n(a,size=5)
result = arrange(b,desc(mpg))

# Pipe Opr can help us chain these functions together.

df %>% filter(mpg>20)  %>% sample_n(size = 5) %>% arrange(desc(mpg))


# Exercise on the MTCARS Dataset.

# import/install libraries.
install.packages("dplyr")
library(dplyr)
head(mtcars)

  # Q1, Return rows of cars that have an mpg value greter than 20 & 6 cylinders 
filter(mtcars,mpg>20,cyl==6)
  # Q2, Reorder the data frame by cyl 1st, the desc wt.
arrange(mtcars,cyl,desc(wt))
  # Q3, Select the columns mpg & hp.
select(mtcars,mpg,hp)
  # Q4, Select the disctinct values of the gear column.
distinct(select(mtcars,gear)) 
  # Q5, Create a new column called perfomance wich is calculated by hp / wt.
mtcars %>% select(gear) %>% distinct()
mutate(mtcars, Perfomance=hp/wt)
  # Q6, Find the mean mpg value using dplyr.
summarise(mtcars,avg_mpg=mean(mpg))
  # Q7, Use pipe operators to get the mean hp value for cArs with 6 cylinbders.
mtcars %>% filter(cyl==6) %>% summarise(avg_hp=mean(hp))


# Tidyr
# We use this package to clean our data & a host of other things.
install.packages('tidyr')
install.packages('data.table')   # Package for dataframes.

library(tidyr)
library(data.table)
# On tidyr you must know at 4 important fucntions:
# gather(),spread(),sperate() & unite()

# gather(dataset,column1,column2) = Gather helps you combine column & rows together.
# for more on gather() consult type/code help(gather).

# spread(dataset.gatherd,col1,col2) = basically your spreading columns, its a complement of gather()













































































































































































