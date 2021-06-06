#filtering data :- 
# 1.where clause
select firstname, lastname from employee where id = 1;

#Distinct clause
select distinct lastname from employee order by lastname desc;

#combination of firstname and lastname
select distinct firstname, lastname from employee;

#distinct whith null values , distinct treats all null values as one null
select  distinct lastname from employee;

#AND operator , and operator return true if both the expression match else return null
select firstname, lastname, id from employee where id = 1 and lastname = 'bm' order by firstname desc , lastname desc;

#OR operator , or operator return true if one of the expression is matched
select firstname, lastname, id from employee  where id = 1 or lastname = 'bm';

#IN Operator - it returns the 1 if the value in the argumnt is matched otherwise 0, its also the replacement of or operator.
select * from department where name in('IT', 'Sales');

#Between Operator - this operator is used to find the resultset which comes under given reange
select feature_name, car_id from features where id between 1 and 3;
select feature_name, car_id from features where year between '2018-02-22'  and '2019-02-22';

#Like - like operator is used to find a record using a given pattern
#there is wildcard in like operator such as %,_ we can used it to find starting string or ending string.
select id, feature_name from features where feature_name like '%sor';
select id, feature_name from features where feature_name like '%in%';
select id, feature_name from features where feature_name like '%e%';
select id, feature_name from features where feature_name like '_i%';  ##searching character at second position.
select id, feature_name from features where feature_name like 'd_%';  ##searching for the characters starts with.

#Limit - it is used to return number of rows or sprcific rows.
select feature_name from features where car_id having 1 limit 2;

#Is Null - it is used to check whether the value is null or not.
select feature_name from features where car_id is null;
select feature_name from features where car_id is not null;
select feature_name from features where year is null;
select feature_name from features where year is not null;
	