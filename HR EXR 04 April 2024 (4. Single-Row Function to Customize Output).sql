-- 4-1. Single row function to Customize output

-- 2.
SELECT EMPLOYEE_ID, LAST_NAME, ROUND(SALARY+(SALARY*0.155)) "New Salary", SALARY
FROM employees;

-- 5.
SELECT LAST_NAME, LENGTH(LAST_NAME) "LENGTH"
FROM employees
WHERE LAST_NAME LIKE 'J%' OR LAST_NAME LIKE 'A%' OR LAST_NAME LIKE 'M.%';

SELECT LAST_NAME, LENGTH(LAST_NAME) "LENGTH"
FROM employees
WHERE SUBSTR (LAST_NAME, 1,1) IN ('J','A','M.');

-- 7.
SELECT LAST_NAME, LPAD(SALARY, 15, '$') SALARY
FROM employees;

-- Using Conversion Function and Conditional