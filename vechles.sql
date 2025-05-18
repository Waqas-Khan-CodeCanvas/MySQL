create database vechicle;
use vechicle;
show tables;

create table car(
	id int(50) primary key,
    model varchar(50),
    color varchar(50),
    seats int(20),
    price int(50)
);    

describe car;

insert into car 
(id,model,color,seats,price)
values
(102,2020,"red",2,30000000),
(103,2021,"blue",4,20000000),
(104,2021,"yellow",4,40000000),
(105,2022,"white",4,30000000),
(106,2022,"white",4,40000000);

select * from car;
insert into car
(id,model,color,seats,price)
values
(107,2023,"blue",4,50000000);

update car set color="Blue" where id=103;

select * from car;

select * from car where color="Blue" and model=2021;
select * from car where color in ("Blue");



















