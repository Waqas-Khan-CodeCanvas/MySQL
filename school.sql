show databases;
use school_db;
create table student(
	id int(20) primary key auto_increment,
    name varchar(20) not null,
    gender varchar(20),
    age int(10) not null default 20,
    city int(10)
    );

desc student;

insert into  student 
(name,gender,age,city)
values
("ali","M",22,2),
("Bilal","M",21,2),
("Fatima","F",19,3),
("Hareem","F",19,null),
("Talal","M",19,null);

create table city(
	cid int(20) primary key auto_increment,
    ccity varchar(20) not null
    );

insert into city
(ccity)
values
("peshawar"),
("swabi"),
("mardan"),
("kohat"),
("bannu");

select * from student;
select * from city;

select s.id, s.name, s.gender, s.age,s.city,c.ccity 
from student s right join city c on s.city=c.cid;


insert into  student 
(name,gender,age,city)
values
("mahnoor","F",19,2),
("alisha","F",20,2),
("zaryab","M",20,3),
("shayyan","M",21,null),
("mustafa","M",21,null);

