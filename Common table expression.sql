#Common table expression - CTE (introduced in mysql 8.0)
with employee_with_same_age as(select firstname,lastname,age from employee where age = 32) 
select firstname , age from employee_with_same_age;

with employee_with_same_dept as(select * from employee where department_did = 3) 
select firstname, lastname, department_did from employee_with_same_dept;

#Recursive CTE - refrencing to it self 
with recursive printingnumber_from_one_to_ten as(
select 1 as number_series #anchor member starting from 1
union all
select number_series+1  from printingnumber_from_one_to_ten #recursive member
where number_series < 10
)
select * from printingnumber_from_one_to_ten;
