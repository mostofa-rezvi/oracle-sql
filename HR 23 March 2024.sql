-- upper / lower / initcap - function
SELECT first_name, last_name, salary
from employees
WHERE first_name = initcap ('pAYam');
-- WHERE lower(first_name) = 'payam';
-- WHERE upper(first_name) = 'PAYAM';

SELECT *
from employees;

-- concat / substr(subtraction strings)
-- using substr function use 3 parameter/argument
SELECT FIRST_NAME, LAST_NAME, SALARY, JOB_ID,
CONCAT(FIRST_NAME, LAST_NAME) "Full Name", substr(FIRST_NAME, 1, 3)
FROM employees
where FIRST_NAME = initcap ('payam');

-- using 'substr' function 
SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -2) = 'an';

-- EXERCISE
SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -2, 2) = 'an';

-- EXERCISE
SELECT employee_id, CONCAT(first_name, last_name) NAME,
LENGTH (last_name), INSTR(last_name, 'a') "Contains 'a'?"
FROM employees
WHERE SUBSTR(last_name, -2, 1) = 'a';

-- length(string length) / instr(in string '_' letter position)
SELECT FIRST_NAME, LAST_NAME, SALARY,
length(FIRST_NAME), INSTR(FIRST_NAME, 'l')
FROM employees;

SELECT FIRST_NAME, LAST_NAME, SALARY,
INSTR(lower(FIRST_NAME), 'd')
FROM employees
WHERE job_id='IT_PROG';

-- LPAD(Left Padded) / RPAD(Right Padded)
SELECT FIRST_NAME, LAST_NAME, SALARY,
LPAD(FIRST_NAME, 10, '-'), 
RPAD(FIRST_NAME, 10, '-')
FROM employees;

-- EXERCISE
SELECT *
FROM employees
WHERE SUBSTR(JOB_ID, 1, 2) = 'IT';

-- EXERCISE
SELECT FIRST_NAME, JOB_ID,
LOWER(CONCAT(SUBSTR(FIRST_NAME, 2, 2), 'IT'))
FROM EMPLOYEES;

SELECT FIRST_NAME, JOB_ID,
LOWER(CONCAT(SUBSTR(FIRST_NAME, 2, 2), SUBSTR(JOB_ID, 1, 2)))
FROM EMPLOYEES;

SELECT FIRST_NAME, JOB_ID,
LOWER(CONCAT(SUBSTR(FIRST_NAME, 2, 2), SUBSTR(JOB_ID, 1, 2)))
FROM EMPLOYEES
WHERE SUBSTR(JOB_ID, 1, 2)='IT';

