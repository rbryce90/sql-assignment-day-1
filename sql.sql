--Table
--1
create table person(
    id serial primary key
    , name text not null
    , age integer not null
    , height integer not null
    , city text not null
    , favorite_color text not null
);

--2
insert into person(name, age, height, city, favorite_color)
values ('bryce', 28, 71, 'yuma', 'blue')
, ('bryce', 38, 74, 'dallas', 'red')
, ('bill', 48, 60, 'houst', 'purple')
, ('tiffany', 58, 80, 'phoenix', 'green')
, ('joe', 68, 35, 'miami', 'orange');

--3
select * from person 
order by height desc;

--4
select * from person 
order by height asc;


--5
select * from person 
order by age desc;

--6 
select * from person
where age > 20;

--7
select * from person 
where age = 18;

--8
select * from person 
where age < 20 or age > 30;

--9 
select * from person 
where age != 27;

--10
select * from person
where favorite_color != 'red';

--11 
select * from person 
where favorite_color != 'blue' and favorite_color !='red';

--12

select * from person 
where favorite_color  = 'orange' or favorite_color = 'green';

--13
select * from person 
where favorite_color = 'orange' or favorite_color = 'green' or favorite_color = 'blue';

--14
select * from person
where favorite_color = 'yellow' or favorite_color = 'purple';

drop table orders;

create table orders (
    person_id serial primary key
    , product_name text
    , product_price integer
    , quantity integer
);

insert into orders( product_name, product_price, quantity)
values ('salad', 2, 5)
, ('pizza', 5, 3)
, ('burger', 3, 4)
, ('chicken', 1, 10)
, ('sausage', 4, 9);


select * from orders;

select sum(quantity) from orders;

select sum(product_price * quantity) from orders;

select sum(product_price * quantity) from orders where person_id = 1;


insert into artist(name)
values ('Jeff Buckley')
, ('Monet')
, ('Moe Moe');

select * from artist 
order by name 
desc limit 10;

select * from artist 
order by name 
asc limit 5;

select * from artist 
where name like 'Black%';

select * from artist 
where name like '%Black%';

select * from employee
where city = 'Calgary';

select max(birth_date) from employee;
select min(birth_date) from employee;


select * from employee 
where reports_to = 2;

select count(*) from employee
where city = 'Lethbridge';

select count(*) from invoice 
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select * from invoice
where total > 5;

select * from invoice
where total < 5;

select count(*) from invoice 
where billing_state in ('CA', 'TX', 'AZ');

select avg(total) from invoice;

select sum(total) from invoice;
