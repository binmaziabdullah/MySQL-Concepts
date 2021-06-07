#Avg -Avg() is used to get the average value in a set of values, it ignore null
#get avg marks by each group student 
select firstname,lastname, avg(marks) as totalmarks from name group by firstname;


#Count - count () is used to find the number of rows in group, it also include null values 
#count total number of car and grouping by carname
select car_name, count(*), year from car group by car_name; #selecting number of carname repeated

#Sum - Sum() is used to get summation or total  in a set of values , it ignore nulls.
#get total marks by each student group
select firstname,lastname, sum(marks) as totalmarks from name group by firstname; 

#Min -Min() is used to get the minimum value in a set of values, it ignore null
#get minimum marks by each group student 
select firstname,lastname, min(marks) as totalmarks from name group by firstname;

#Max -Max() is used to get the maximum value in a set of values, it ignore null
#get maximum marks by each group student 
select firstname,lastname, max(marks) as totalmarks from name group by firstname;

