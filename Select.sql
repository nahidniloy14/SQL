#create database
create database Employee;
#point to database
use Employee;

#create table
#varchar is given as a symbol of string 
create table Employeeinfo(name varchar(20),id int,location varchar(20),age int);

# to show the table
describe Employeeinfo;

#insert into table
insert into Employeeinfo values ('Nahid',101,'Kafrul',24);
insert into Employeeinfo values ('Hassan',102,'Mirpur',26);
insert into Employeeinfo values ('Niloy',104,'Ibrahimpur',28);
insert into Employeeinfo values ('Antu',108,'Boubazar',27);
insert into Employeeinfo values ('Maruf',107,'Kalshi',22);
insert into Employeeinfo values ('Niloy',105,'Kolabagan',28);
insert into Employeeinfo values ('Tousif',104,'newyork',28);

#Retrive Table Data
#select name,id,location,age from employeeinfo;
select * from employeeinfo;
# only show the unique names
select distinct name from employeeinfo;

select name from employeeinfo where location ='newyork';

#conditional (and,or)
select name from employeeinfo where location ='newyork' and age>24;
select name from employeeinfo where location ='newyork' or age>24;
select name from employeeinfo where (location ='newyork' and age>24) or id=104;

#conditional (in)
select name from employeeinfo where id in (102,104);

#conditional (between)
select name from employeeinfo where id between 101 and 105;
select name from employeeinfo where id not between 101 and 105;

# like
# % any character (a,b,c,d)
# a% >> starts with a
# _a >> 2nd letter a
# d__ >> 1st letter d

select * from employeeinfo where name like 'N%';