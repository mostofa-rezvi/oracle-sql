-- 1.
SELECT *
FROM employees
ORDER BY FIRST_NAME;

-- 2.
select upper(first_name)
from employees
FETCH first 20 rows only;

-- 3.
SELECT *
FROM employees
WHERE hire_date = '01-FEB-21';
--WHERE hire_date BETWEEN '01-FEB-08' AND '28-FEB-08';

--4.
SELECT *
FROM employees
WHERE MOD(employee_id, 2) = 0;