use school_db;
show tables;
create table students(
	id int(20),
    name varchar(20),
    marks varchar(20),
    city varchar(20),
    contact int(20)
    );
show tables;
desc students;
insert into students
(id ,name,marks,city,contact)
values
(01,"ali",400,"mardan",013993),
(02,"faizan",200,"peshawar",013993),
(03,"hasan",350,"rustam",013993),
(04,"zaryab",150,"peshawar",013993),
(05,"waqas",100,"mardan",013993),
(06,"hasham",500,"tonsa",013993),
(07,"sajid",490,"dabara",013993),
(08,"noman",300,"mardan",013993),
(09,"rohail",400,"mardan",013993),
(10,"zoraiz",200,"peshawar",013993);

select * from students;

select * from students where city="peshawar";
select marks from students where name="zaryab";
select id,name,marks from students where name="zaryab";
update students set contact=03277424 where name="zoraiz";

delete from students where name="hasan";
select * from students;