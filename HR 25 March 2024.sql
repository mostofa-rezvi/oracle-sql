-- Current Date
SELECT SYSDATE
FROM DUAL;
-- Current Date
SELECT CURRENT_DATE
FROM DUAL;


-- Current Time Zone
SELECT SESSIONTIMEZONE, CURRENT_DATE 
FROM DUAL;


-- Current Time Stamp 
SELECT CURRENT_TIMESTAMP
FROM DUAL;


-- Using Arithmetic Operators with Dates
SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS
FROM employees
WHERE department_id = 90;

SELECT last_name, (SYSDATE-hire_date)/7 AS WEEKS
FROM employees;

SELECT SYSDATE - TO_DATE('1-MARCH-2024', 'DD-MON-YYYY') 
FROM employees;


-- Date Manipulation Functions.
SELECT employee_id, HIRE_DATE,

ROUND(MONTHS_BETWEEN (SYSDATE, HIRE_DATE)) "MONTHS", 
ADD_MONTHS (HIRE_DATE, 3) "REVIEW PERIOD", 
NEXT_DAY(ADD_MONTHS (HIRE_DATE, 3), 'MON'), 
LAST_DAY(HIRE_DATE)

FROM EMPLOYEES 
WHERE MONTHS_BETWEEN (SYSDATE, HIRE_DATE) <210;
-- End Function.

--  ROUND and TRUNC Functions with Dates
SELECT employee_id, hire_date,
ROUND(hire_date, 'MONTH'), TRUNC(hire_date, 'MONTH')
FROM employees
WHERE hire_date LIKE '%04';
-- end ROUND and TRUNC Functions


-- TO_CHAR Function with Numbers
SELECT TO_CHAR(salary, '$99,999.00') SALARY
FROM employees
WHERE last_name = 'Ernst';

-- with TAKA  in TO_CHAR Function with Numbers 
SELECT TO_CHAR(salary, 'L99,999.00', 'NLS_CURRENCY=''tk''') SALARY
FROM employees
WHERE last_name = 'Ernst';
-- end TO_CHAR Function