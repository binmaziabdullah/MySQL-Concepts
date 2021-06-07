#Not Null - not null constraints is a column level constraints to force column to not having any null value.
#u can remove not null column using alter table modify column name

create table nullhandler(
id int not null,
name varchar(100) not null
); 

describe nullhandler;

#Primary key - primary key is used to create a primary key in a table
#it is uniquely identifes each row it cannot be null, automatically index is created by mysql.
#auto_increment is oftenly used with primary key.
drop table if exists primarykeyexample;
create table primarykeyexample(
id int not null ,
name varchar(100) not null,
salary int not null,
primary key(id)
); 

describe primarykeyexample;
#we can add primary key in an existing table
alter table primarykeyexample add primary key(id);

#we can also drop primary key using following stmt
alter table primarykeyexample drop index id;


#Foreign key - fk is used to create a fk in a table which is is used to link two table togather.
#fk is a reffering a primary key in another table ,we can have multiple fk but each fk is reffering separate table.
drop table if exists foreighnkeyexample;
create table foreighnkeyexample(
id int not null ,
name varchar(100) not null,
salary int not null,
pkid int not null,
constraint fk_id
foreign key(pkid) references primarykeyexample(id)
);

describe foreighnkeyexample;
#we can add foreign key in an existing table
alter table foreighnkeyexample add foreign key pkid(id) references primarykeyexample(id);

#we can also drop foreign key using following stmt
alter table foreighnkeyexample drop foreign  key fk_id ;
#show table definition
show create table foreighnkeyexample;

#disable foreign key check - we can disable or renable foreign key checks because if you want to drop parent table you have to disable foreign key checks to 0.
#if you want to drop table then u can do it as drop child table then parent table in some sequence, but when u disable fk check it doesnt follow sequence.
#u can use foreign_key_checks variable to disable or renable it.
set foreign_key_checks = 1;


#unique - it is used to make any column accept only unique values ,it does not allow duplicates
#it is same as primary key in terms of providing unique values but it can have null value where pk doesnt.
#mysql will automatically created index same as in pk and uses that to force column behave accordingly

drop table if exists uniquekeyexample;
create table uniquekeyexample(
id int not null  ,
name varchar(100) not null,
firstname varchar(100) not null ,
lastname varchar(100) not null
);

show create table uniquekeyexample;
#u can drop unique key as follow
drop index uq_key on uniquekeyexample;
#add unique key to existing column in a table.
alter table uniquekeyexample add constraint uq_key unique (firstname, lastname);


