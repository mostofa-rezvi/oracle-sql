select *
from employees;

select FIRST_NAME, JOB_ID, SALARY, SALARY*12 "YEARLY_SALARY"
FROM employees
WHERE SALARY <> 9000
order by SALARY desc;

select *
from employees
where salary <> 9000
order by 2 desc
FETCH first 5 rows only;

select employee_id, first_name, salary
from employees
where salary <> 9000
order by employee_id
OFFSET 5 rows FETCH NEXT 5 rows only;

select first_name, job_id, salary, salary*12 "Yearly Salary"
from employees
where first_name = '%Employee_Name'
order by first_name desc;