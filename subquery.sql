create database nested;
select* from workers;

 /*subquery*/
select name ,salary from workers where salary=(select max(salary)maximumsalary from workers);
select name,dob from workers;

select name,dob from workers where dob='12th march' or dob='3rd june';
/*select name,dob from workers where dob IN ('12th march','3rd june') ORDER BY dob asc;
select dob ,count(dob) cnt from workers group by dob
select dob  from workers group by dob having count(dob)>1; */

/*using subquery*/
select name,dob from workers where dob IN (select dob  from workers group by dob having count(dob)>1) ORDER BY dob asc;
