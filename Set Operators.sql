#Union - basically union operator is used to combine the result set of multiple select query into a single resultset.
# order and columns must be same and datatypes in both must be same.
select did from department
union    ##union is implicitly using distinct or removing duplicates by default
select department_did from employee;

#colum alias in union- you can use colum alias for custome column name, otherwise it select the column name from first select statement
select concat(did) as common_id  
from department
union    ##union is implicitly using distinct or removing duplicates by default
select department_did 
from employee
order by common_id desc;


#Union-All - basically union-all operator is also used to perform same operation as union but it does not remove the duplicates.
select did from department
union all   ##combining resultset without removing duplicates , it is faster than union in terms of performance
select department_did from employee;

#intersect - intersect is used to return unique/distinct rows from resultsets of two or more queries 
#intersect is not supported in mysql we can use it throw IN, joins, distinct
#must be same number of columns in both select statement
#using IN
select department_did from employee 
where department_did in (select did from department ); #returning only duplicates which are in both the tables

#intersect using join
select name.firstname, name.lastname from name 
inner join employee e on name.firstname = e.firstname and name.lastname =  e.lastname;

#Minus - minus operator is basically comparing the resultset from two queries and returning the distinct result  from 
# the first querie which is not present in second queries
#it is not supported in mysql directly we can use it through join.alter
select id from employee left join department on employee.id = department.did
where department.did is null;
