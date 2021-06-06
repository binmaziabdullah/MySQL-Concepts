insert into car(car_name, year) values('audi q7', '2018-02-22'),('mercedes s-class', '2019-02-22'),
('tata safari', '2021-05-26'),('Bmw a1', '2020-04-25');

insert into features(feature_name, car_id) values('automatic sensor', 1),('infre red', 2),
('bluetooth enbled', 3),('airbag support', 3);	

#Insert into select - inserting row from the select query
insert into name(firstname, lastname) select firstname, lastname from employee where id = 9;

#Insert ignore - this satement is used to ignore a particular row which causes error
#--insert into employee(age, firstname,lastname,department_did,email) values (38, 'jameel','khan', 2, 'ashq@gmail.com');--
#in above example email is unique and already present, so the email column will cause error we can ignore that column using insert ignore stmt instead of error it will show warning.
insert ignore into employee(age, firstname,lastname,department_did,email) values (38, 'jameel','khan', 2, 'ashq@gmail.com');
show warnings;

#update - updating single or ,multiple columns in the database
update employee set firstname = "Ahmad" ,email = 'aahd@gmail.com' where department_did = 1; 
#updating data using the resultset from select query.
update employee set firstname = (select firstname from name where id =1 ) where id = 1;

#update join - update data in multiple table or cross table using data of another table
update features inner join car on features.car_id = car.id 
set features.year = car.year where features.id = 2;
 
 #delete - delete single record using delete clause or number of specified rows usiing limit clause.
 delete from name where id = 4;
 delete from name where firstname  = 'ahsan' order by firstname limit 2;
 delete from name where firstname  = 'ahsan' limit 2;
 
 #On Delete Cascade - it is used when u want to delete the parent record then asscited with parent will be deleted automatically.(Foriegn ket column).
 create table car 
 ( 
   id int not null auto_increment,
   car_name varchar(100) ,
   year  date,
   primary key (id)
 );
 
 create table features 
 ( 
   id int not null auto_increment,
   feature_name varchar(100) ,
   car_id int null,
   primary key (id),
   foreign key (car_id)
    references car(id)
    on delete cascade
 );
 # now deleting the record from parent so child also deleted.
 delete from car where id = 1;
