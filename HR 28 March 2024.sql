select count(commission_pct)
from employees;

select avg(nvl(commission_pct, 0))
from employees
where commission_pct is null;
-- where commission_pct is not null;

select job_id, department_id, round(avg(salary))
from employees
where department_id is not null
GROUP BY job_id, department_id
order by 1, 2;

select COUNT(salary)
from employees;

select job_id, sum(salary) PayRoll
from employees
where job_id not like '%REP%'
GROUP BY job_id
HAVING sum (salary)>13000
ORDER BY SUM(salary);

select *
from employees;

--2
select department_id
--nvl(commission_pct, 0)
from employees
where commission_pct is not null
group by department_id
having count(commission_pct)>5;

--3
select job_id, avg(salary)
from employees
GROUP BY job_id
HAVING AVG(salary)>10000
ORDER BY AVG(salary);

--1
select TO_CHAR(hire_date, 'YYYY')
from employees
group by to_char (hire_date, 'YYYY')
having COUNT(employee_id) > 10;