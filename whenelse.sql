use test_db;
create table student(
	id int(50) primary key auto_increment,
    name varchar(50) not null ,
    subject varchar(50) default "OOPS",
    percentage float(20) );
    
show tables;   
desc student; 

insert into student (name,percentage)
values
("TALAL",63),
("FATIMA",78), 
("HAREEM",68),
("BEENISA",59),
("SADAF",43);

select * from student;
select id, name,subject,percentage,
if(percentage % 2 =0,"Even","Odd")
from student;

select id,name,percentage,
if(percentage >=80 and percentage<=100, "grade A",""),
if(percentage >=70 and percentage<=79, "grade B",""),
if(percentage >=60 and percentage<=69, "grade C",""),
if(percentage >=50 and percentage<=59, "grade D",""),
if(percentage >=10 and percentage<=49, "grade F","")
from student;

select name,subject,percentage, 
case 
when percentage >=80 and percentage <= 100  then  "grade A" 
when percentage >=70 and percentage <= 79  then  "grade B" 
when percentage >=60 and percentage <= 69  then  "grade C" 
when percentage >=50 and percentage <= 59  then  "grade D" 
else "grade F"
end as "GRADE"
from student