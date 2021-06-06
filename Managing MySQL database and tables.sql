#use - it is used to select a database to work with
use dto;

#create database - to create a new database and you can use if not exist clause to avoid error if database exists
create database databse_name;

#drop database/schema - it is used to drop database permanently
drop schema if exists databse_name;

#listing all database
show databases;

#create table - it is used to create a table in a database
create table if not exists features 
 ( 
   id int not null auto_increment,
   feature_name varchar(100) ,
   car_id int null,
   primary key (id),
   foreign key (car_id)
    references car(id)
    on delete cascade
 );
 
 #alter table add column- alter table is used to add new columns to the existing table.
alter table generate_col_example add column
    extracol varchar(150) null;

#alter table - it is used to restructure the existing table.
alter table generate_col_example   
    add obtain_marks int(50) null,
    add  max_marks int(100)
    after marks;
    
#rename table - rename table is used to rename existing table. we can rename multiple table
rename table generateexample to generate_example;

#rename using alter table 
alter table generate_column_example rename to generate_col_example;

#rename column - we can rename column of existing table as follow.
alter table generate_col_example change id 	gid int;

#drop column - alter table drop column is used to remove on or more column from the table.
alter table generate_col_example drop column extracol, drop other_col;

#drop table - it is used to drop table and all the records permanently
drop table if exists tablename;

#create temporary table - it is used to create a temporary table
Create temporary table studentmarks select gid, firstname, surname from generate_col_example where gid = 1;

Create temporary table salesman (
sid int not null,
name varchar(100)
);

#u can drop temporary table as follow
drop temporary table studentmarks;


#truncate table- truncate table is removing all the data in a table , truncate will fail if you truncate table which is having a foreign key.
truncate table tablename; #table is option and used to differ in truncate and truncate().

#generated colum - mysql introduces feature to generate column while creating the table using "GENERATED ALWAYS AS (expression)".
create table generate_example 
 ( 
   id int not null auto_increment,
   firstname varchar(100) null,
   surname varchar(100) null,
   full_name varchar(150) generated always as(concat(firstname,'', surname)), #stored mode , by default it is virtual
   primary key (id)
 );
 
 insert into generate_example(firstname, surname) values('Sameer','Khan'),('Hamad','Binmazi');
 
 
 
 
 
        







 


