select *
from employees;

SELECT FIRST_NAME, JOB_ID, SALARY, SALARY*12 "Yearly Salary"
FROM employees
WHERE FIRST_NAME = '&Employee_Name'
ORDER BY FIRST_NAME desc;

SELECT FIRST_NAME, JOB_ID, SALARY, SALARY*12 "Yearly Salary"
FROM employees
WHERE FIRST_NAME LIKE '%&Employee_Name'
ORDER BY FIRST_NAME desc;