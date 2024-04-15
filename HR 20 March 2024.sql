select *
from employees;

select * from employees
where last_name LIKE '%l';

select * from employees
where commission_pct is null;

select * from employees
where commission_pct is null and salary BETWEEN 10000 and 20000;

select * from employees
where commission_pct is null OR salary BETWEEN 10000 and 20000;

select * from employees
where job_id = 'IT_PROG';