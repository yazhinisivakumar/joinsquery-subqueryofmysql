show tables;

create  table emp(
id integer  not null auto_increment,
name varchar(45) not null,
design varchar(45) not null,
doj  date not null,
primary key(id)
);
insert into emp(name,design,doj)values
('ram','manager','1998-09-22'),
('theni','engineer','1998-09-23'),
('vishnu','hr','1998-09-28'),
('kumar','consultor','1998-10-12');
select*from emp;
create table salary(
sid int not null auto_increment,
id int not null,
sdate date not null,
amt int not null,
primary key(sid)
);
truncate table salary;
insert into salary (id,sdate,amt)values
(1, '1998-09-01',10000),
(2, '1998-09-01',7500),
(3, '1998-09-01',6000),
(4, '1998-09-01',4000);
select*from salary;

select*from emp;
/*innerjoin*/

select emp.name,emp.design,salary.sdate,salary.amt from
emp inner join salary
on emp.id=salary.id;

/*left join*/

select emp.name,emp.design,salary.sdate,salary.amt from
emp left join salary
on emp.id=salary.id;
/*right*/
select emp.name,emp.design,salary.sdate,salary.amt from
emp right join salary
on emp.id=salary.id;