1.-- Create a table and name using your ID paroceded by emp, which have 5 fields as
-- eid, ename, salary, hire_date and address with appropriate data types and
-- create primary key on eid.
CREATE TABLE emp_1281332(
eid NUMBER(4) NOT NULL,
ename VARCHAR2(30) NOT NULL,
salary NUMBER(8,2),
hire_date DATE NOT NULL, 
address VARCHAR2(40),
CONSTRAINT CONST_EMP_1281332 (EID) PRIMARY KEY(ID)
);


2.-- Displays the department numbers and average salaries for those departments
-- with a maximum salary that is greater than 12000?
SELECT department_id, round(AVG(salary))
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 12000;


3.-- Display the name whose name start from 'S'?
select first_name, last_name
from employees
where first_name like 'S%' or last_name like 'S%';


4.-- Display the avg salary of employees of department Sales?
select round(avg(e.salary))
from employees e
join departments d on d.department_id = e.department_id
where d.department_name = 'Sales';


5.-- Display the name of employees joining in company in ascending order?
select first_name, last_name
from employees
order BY hire_date;