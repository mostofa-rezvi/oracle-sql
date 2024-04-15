-- 1st Question
-- Find Employee first name, last name, salary where employee name start with A.

SELECT FIRST_NAME, lAST_NAME, SALARY
FROM employees
WHERE FIRST_NAME LIKE 'A%';


-- 2nd Question
-- Find the Employee first name, salary and salary with Bonus.
   Bonus will be 30% of salary.

SELECT FIRST_NAME, SALARY, SALARY+(SALARY*0.3) "Salary with Bonus"
FROM employees;


-- 3rd Question
-- Show wmployee's name, salary where employee's salary is more than 2500.

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM employees
WHERE SALARY > 2500;


-- 4th Question
-- Show employee's name, salary, and annual salary in ascending order.

SELECT FIRST_NAME, LAST_NAME, SALARY, SALARY*12 "ANNUAL SALARY"
FROM employees
ORDER BY 4;