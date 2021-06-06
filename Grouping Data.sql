#Group by - it is used to grouping the rows into summary or sub rows
#it also select the distinct values
select car_name, count(*), year from car group by car_name; #selecting number of carname repeated

#get total marks by each student group
select firstname,lastname, sum(marks) as totalmarks from name group by firstname; 

#get minimum marks by each group student 
select firstname,lastname, min(marks) as totalmarks from name group by firstname;

#get maximum marks by each group student 
select firstname,lastname, max(marks) as totalmarks from name group by firstname;

#Having is similiar as where clause but we cannot use aggregate function with where clause so it is prefer to use having.
#having is applies condition to each group, but where is applied on individual row
select firstname,lastname, max(marks) as maxmarks from name group by firstname having maxmarks > 50;

select firstname,lastname, sum(marks) as totalmarks from name group by firstname having totalmarks > 98;


